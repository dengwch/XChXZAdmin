package com.fh.service.phasell;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.entity.Shop;
import com.fh.util.PageData;


@Service("shopService")
public class ShopService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(Shop shop)throws Exception{
		dao.save("ShopMapper.save", shop);
	}
	/*
	* 删除
	*/
	public void delete(String SHOP_ID)throws Exception{
		dao.delete("ShopMapper.delete", SHOP_ID);
	}
	/*
	* 修改
	*/
	public void edit(Shop shop)throws Exception{
		dao.update("ShopMapper.edit", shop);
	}
	/*
	*列表
	*/
	@SuppressWarnings("unchecked")
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("ShopMapper.datalistPage", page);
	}
	
	public Shop findById(String SHOP_ID)throws Exception{
		return (Shop)dao.findForObject("ShopMapper.findById", SHOP_ID);
	}
}

