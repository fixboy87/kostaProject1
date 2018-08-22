package yanoll.models.service;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.sun.imageio.plugins.common.ImageUtil;

import yanoll.models.dao.ReviewDao;
import yanoll.models.vo.Review_Board;

public class ReviewService {
	
	private static ReviewService service;
	private static ReviewDao dao;
	
	public static ReviewService getInstance() {
		dao=ReviewDao.getInstance();
		return service;
	}
	
	public static int insertReviewService(HttpServletRequest request) throws Exception {
		Review_Board board = new Review_Board();
		request.setCharacterEncoding("utf-8");
		String uploadPath = request.getRealPath("images/pages/review_main_img");
		int size=20*1024*1024;
		
		MultipartRequest multi = 
				new MultipartRequest(request, uploadPath, size, "utf-8", new DefaultFileRenamePolicy());
		
		board.setR_title(multi.getParameter("r_title"));
		board.setR_grade(Integer.parseInt(multi.getParameter("r_grade")));
		board.setR_content(multi.getParameter("r_content"));
		board.setP_no(Integer.parseInt(multi.getParameter("p_no")));
		board.sethotle_name(multi.getParameter("hotle_name"));
		board.setNumber_of_stay_days(Integer.parseInt(multi.getParameter("number_of_stay_days")));
		board.setUser_no(Integer.parseInt(multi.getParameter("user_no")));
		System.out.println("아이디 출력"+multi.getParameter("id"));
		board.setid(multi.getParameter("id"));
		System.out.println("아이디 출력"+board.getid());
		System.out.println(board);
		
		if (multi.getFilesystemName("r_fname")!=null) {
			System.out.println("??");
			String r_fname = multi.getFilesystemName("r_fname");
			board.setr_fname(r_fname);
			
			String pattern = r_fname.substring(r_fname.indexOf(".")+1);
			String headName = r_fname.substring(0, r_fname.indexOf("."));
			
			String imagePath = uploadPath+"\\"+r_fname;
			File src = new File(imagePath);
			
			String thumImagePath = uploadPath+"\\"+headName+"_small."+pattern;
			File dest = new File(thumImagePath);
			
			if (pattern.equalsIgnoreCase("jpg") || pattern.equalsIgnoreCase("gif")) {
				yanoll.models.vo.ImageUtil imageutil = new yanoll.models.vo.ImageUtil();
				imageutil.resize(src, dest, 100, imageutil.RATIO);
			}
		}else {
				board.setr_fname("");
			}
		return dao.insertReview(board);
		}
		

}
