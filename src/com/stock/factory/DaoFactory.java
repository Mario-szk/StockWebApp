package com.stock.factory;

import com.stock.index.dao.IndexDao;
/**
 * �򵥹�����ʵ����indexDao����
 * @author killerboy
 *
 */
public class DaoFactory {
	
	public static IndexDao createIndexDao(int condition)
	{
		IndexDao indexDao = null;
		if(condition == 1)
		{
			indexDao = new IndexDao();
		}
		return indexDao;
	}
}
