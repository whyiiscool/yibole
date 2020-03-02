package com.yibole.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

import com.ybl.vo.Employer;
import com.yibole.util.SessionManager;


/**
 * Application Lifecycle Listener implementation class SessionListener
 *
 */
@WebListener
public class SessionAttritubeListener implements HttpSessionAttributeListener {

    /**
     * Default constructor. 
     */
    public SessionAttritubeListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionAttributeListener#attributeRemoved(HttpSessionBindingEvent)
     */
    public void attributeRemoved(HttpSessionBindingEvent arg0) {
        // TODO Auto-generated method stub
    	System.out.print("remove");
    }

	/**
     * @see HttpSessionAttributeListener#attributeAdded(HttpSessionBindingEvent)
     */
    public void attributeAdded(HttpSessionBindingEvent arg0) {
        // TODO Auto-generated method stub
    	if(arg0.getName().equals("em")){
			Employer em = (Employer) arg0.getValue();
			if(SessionManager.sessionmap.containsKey(em.getFilmid())){
				HttpSession session = SessionManager.sessionmap.get(em.getFilmid());
				session.removeAttribute("em");
				SessionManager.sessionmap.remove(em.getFilmid());
			}
			SessionManager.sessionmap.put(em.getFilmid(), arg0.getSession());
		}
    }

	/**
     * @see HttpSessionAttributeListener#attributeReplaced(HttpSessionBindingEvent)
     */
    public void attributeReplaced(HttpSessionBindingEvent arg0) {
        // TODO Auto-generated method stub
    }
	
}
