package yanoll.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("*.do")
public class ControlServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public ControlServlet() {
        super();        
    }
    
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        // insertForm.do, insertAction.do, list.do. detail.do
        String requestURI = request.getRequestURI();
        String uri_id = requestURI.substring(requestURI.lastIndexOf("/")+1, requestURI.lastIndexOf("."));
        System.out.println(uri_id);
        String command=uri_id+".do";
        System.out.println(command);
        /*System.out.println(requestURI);// /MVC/insertForm.do
        String contextPath = request.getContextPath();
        String command = requestURI.substring(contextPath.length() + 16);
        System.out.println(command);// insertForm.do*/
    	
    	
    	//insertForm.do, insertAction.do, list.do. detail.do
//    	String requestURI = request.getRequestURI();
    	//System.out.println(requestURI);//    /MVC/insertForm.do
//    	String contextPath = request.getContextPath();
 //   	String command = requestURI.substring(contextPath.length()+1);
 //   	System.out.println(command);//   insertForm.do
    	
    	Action action = null;
    	ActionForward forward = null;
    	
    	if(command.equals("titlePage.do")){
    		action = new TitlePageAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if (command.equals("Insertenquire.do")) {
			action = new GngInqInsertFormAction();
			try {
				forward = action.execute(request, response);
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println(command);
			
		} else if (command.equals("GngInqInsertAction")) {
			action = new GngInqInsertAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("registerTypeForm.do")) {//회원유형 선택창
			   action = new RegisterTypeFormAction();
			   try {
			      forward = action.execute(request, response);
			      
			   } catch (Exception e) {
			      e.printStackTrace();
			   }
		} else if (command.equals("myPageAction.do")) {
			   action = new MyPageAction();
			   try {
			      forward = action.execute(request, response);
			      
			   } catch (Exception e) {
			      e.printStackTrace();
			   }
		} else if (command.equals("bookingAction.do")) {
			   action = new BookingAction();
			   try {
			      forward = action.execute(request, response);
			      
			   } catch (Exception e) {
			      e.printStackTrace();
			   }
		} else if (command.equals("registerForm.do")) {
				action = new RegisterFormAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		} else if (command.equals("registerFormAction2.do")) {
				action = new RegisterFormAction2();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		} else if (command.equals("registerInsert.do")) {
				action = new RegisterInsertAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		} else if (command.equals("loginForm.do")) {
				action = new LoginFormAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		} else if (command.equals("loginAction.do")) {
				action = new LoginAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		} else if (command.equals("logOutAction.do")) {
				action = new LogOutAction();
				try {
					forward = action.execute(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
		}else if (command.equals("review_insertAction.do")) {//syj_1.후기 등록
			action = new Review_insertAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("review_list.do")) {//syj_2.후기 목록
			action = new Review_listAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("review_insertFormAction.do")) {//syj_3.입력폼으로 이동
			action = new Review_insertFormAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("review_detailAction.do")) {//syj_4.디테일 이동
			action = new Review_detailAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("review_deleteAction.do")) {//syj_5.게시물 삭제
			action = new Review_deleteAction();
			try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if (command.equals("GngListAction.do")) {
            action = new GngListAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("GngDetailAction.do")){
            action = new GngDetailAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("GngReplyFormAction.do")){
            action = new GngReplyFormAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("GngReplyInsertAction.do")){
            action = new GngReplyInsertAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("GngReplyListAction.do")){
            action = new GngReplyListAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("GngDeleteEnquire.do")){
            action = new GngDeleteEnquire();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("GngDeleteEnqReply.do")){
            action = new GngDeleteEnqReply();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("GngUpdateEnqReplyForm.do")){
            action = new GngUpdateEnqReplyForm();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("GngUpdateEnqReplyAction.do")){
            action = new GngUpdateEnqReplyAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }

        } else if(command.equals("HotelListActionForm.do")){
            action = new HotelListActionForm();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("HotelSortLocationAction.do")){
            action = new HotelSortLocationAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("myPageAction.do")) {
        	action = new MyPageAction();
        	try {
        		forward = action.execute(request, response);
        	} catch (Exception e) {
        		e.printStackTrace();
        	}
        } else if(command.equals("Management.do")){
            action = new ManagementAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("roomList.do")){
            action = new RoomListAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("Hotel_Info.do")){
            action = new HotelInfoAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else if(command.equals("Sales.do")){
            action = new SalesAction();
            try {
                forward = action.execute(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } 
    	

    	
    	
    	
    	
    	if(forward != null){
    		if(forward.isRedirect()){
    			response.sendRedirect(forward.getPath());
    		}else{
    			RequestDispatcher dispatcher =
    					request.getRequestDispatcher(forward.getPath());
    			dispatcher.forward(request, response);
    		}
    	}
    	
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

}






