package com.dh.youth.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dh.youth.beans.Column;
import com.dh.youth.dao.ColumnDao;
import com.dh.youth.dao.impl.ColumnDaoImpl;

public class ColumnServlet extends HttpServlet {

	private String method;
	RequestDispatcher rd = null;
	private ColumnDao columnDao;
	private String msg = null;
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		method = request.getParameter("method");
		if("tocolumn".equals(method)){
			toColumn(request, response);
		}else if("add".equals(method)){
			addColumn(request, response);
		}else if("listcolumn".equals(method)){
			listColumn(request, response);
		}else if("editcolumn".equals(method)){
			reeditColumn(request, response);
		}else if("update".equals(method)){
			updateColumn(request, response);
		}else if("deletecolumn".equals(method)){
			deleteColumn(request, response);
		}
	}

	public void toColumn(HttpServletRequest request, HttpServletResponse response){
		rd = getServletContext().getRequestDispatcher("/admin/column.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void addColumn(HttpServletRequest request, HttpServletResponse response){
		columnDao = new ColumnDaoImpl();
		Column column = new Column();
		column.setColumnName(request.getParameter("name"));
		column.setColumnIndex(Integer.valueOf(request.getParameter("columnindex")));
		column.setColumnDescription(request.getParameter("description"));
		
		int flag = columnDao.insertColumn(column);
		if(flag == 1){
			msg="栏目保存成功！";
		}else{
			msg = "栏目保存失败！";
		}
		
		request.setAttribute("msg", msg);
		rd = getServletContext().getRequestDispatcher("/admin/column.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void listColumn(HttpServletRequest request, HttpServletResponse response){
		columnDao = new ColumnDaoImpl();
		ArrayList<Column> columnList = columnDao.getColumnList(); 
		request.setAttribute("columnList", columnList);
		rd = getServletContext().getRequestDispatcher("/admin/column-list.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void reeditColumn(HttpServletRequest request, HttpServletResponse response){
		int id = Integer.valueOf(request.getParameter("id"));
		columnDao = new ColumnDaoImpl();
		Column column = columnDao.getColumnById(id);
		request.setAttribute("column", column);
		rd = getServletContext().getRequestDispatcher("/admin/reeditcolumn.jsp");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void updateColumn(HttpServletRequest request, HttpServletResponse response){
		Column column = new Column();
		String msg = null;
		columnDao = new ColumnDaoImpl();
		column.setId(Integer.valueOf(request.getParameter("id")));
		column.setColumnName(request.getParameter("name"));
		column.setColumnIndex(Integer.valueOf(request.getParameter("columnindex")));
		column.setColumnDescription(request.getParameter("description"));
		int flag = columnDao.updateColumn(column);
		if(flag == 1){
			msg="更新成功！";
		}else{
			msg="更新失败！";
		}
		request.setAttribute("msg", msg);
		request.setAttribute("id", column.getId());
		
		reeditColumn(request, response);
		
		/*rd = getServletContext().getRequestDispatcher("/subyouth/column?method=editcolumn");
		try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	}
	
	public void deleteColumn(HttpServletRequest request, HttpServletResponse response){
		String msg = null;
		columnDao = new ColumnDaoImpl();
		int id = Integer.valueOf(request.getParameter("id"));
		int flag = columnDao.deleteColumn(id);
		if(flag == 1){
			msg="删除成功！";
		}else{
			msg="删除失败！";
		}
		request.setAttribute("msg", msg);
		listColumn(request, response);
		rd = getServletContext().getRequestDispatcher("/subyouth/column?method=listcolumn");
		/*try {
			rd.forward(request, response);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	}
}
