package com.stock.action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.lucene.index.CorruptIndexException;
import org.apache.lucene.queryParser.ParseException;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.stock.index.dao.IndexDao;
import com.stock.service.SearchStock;
import com.stock.service.impl.SearchStockImpl;
import com.stock.util.PageControl;

public class SearchStockAction extends ActionSupport implements RequestAware,SessionAware{
	/**
	 * 
	 */
	private static final long serialVersionUID = 3736215255985234255L;
	private String searchkeyword;
	private String jumpPage;
	private String searchtype;
	private PageControl pageControl;
	private Map<String,Object> request;
	private Map<String,Object> session;
	//private int curPage; // ��ǰҳ
	public String queryStockInfos() throws Exception
	{
	
		SearchStock searchStock = new SearchStockImpl();
		System.out.println("��ʼִ������");
		System.out.println("�ؼ��֣�"+searchkeyword);
		System.out.println("���ͣ�"+searchtype);
		if(searchkeyword == null || searchkeyword.equals(""))
		{
			return "homePage";
		}
		if((searchkeyword == null|| searchkeyword.equals("")) && (searchtype == null || searchtype.equals("")))
		{
			return "homePage";
		}
		System.out.println("��תҳ��"+jumpPage);
		if(pageControl == null)
		{
			
			pageControl = new PageControl();
		
		}
		pageControl = searchStock.searchStock(jumpPage, searchkeyword, searchtype, pageControl);
		//searchtype = 1+"";
		List list = pageControl.getData();
	//	session.put("searchkeyword", searchkeyword);
	//	session.put("stockList", list);
		request.put("stockList", list);
		//session.put("searchtype", searchtype);
		System.out.println("��������");
		return "gotoStockResult";
		
		
	}
	public String getSearchkeyword() {
		return searchkeyword;
	}
	public void setSearchkeyword(String searchkeyword) {
		this.searchkeyword = searchkeyword;
	}
	public String getJumpPage() {
		return jumpPage;
	}
	public void setJumpPage(String jumpPage) {
		this.jumpPage = jumpPage;
	}
	public PageControl getPageControl() {
		return pageControl;
	}
	public void setPageControl(PageControl pageControl) {
		this.pageControl = pageControl;
	}
	public void setRequest(Map<String, Object> request) {
		this.request = request;
		
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}
	public String getSearchtype() {
		return searchtype;
	}
	public void setSearchtype(String searchtype) {
		this.searchtype = searchtype;
	}
	
	
	
}
