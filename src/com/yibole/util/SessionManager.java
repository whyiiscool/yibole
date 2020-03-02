package com.yibole.util;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

public class SessionManager {
	public static Map<String,HttpSession> sessionmap = new HashMap<String,HttpSession>();
}
