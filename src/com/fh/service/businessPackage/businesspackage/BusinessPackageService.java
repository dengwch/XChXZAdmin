package com.fh.service.businessPackage.businesspackage;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;


@Service("businesspackageService")
public class BusinessPackageService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("BusinessPackageMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("BusinessPackageMapper.delete", pd);
	}
	
	/*
	* 删除YW
	*/
	public void deleteYW(PageData pd)throws Exception{
		dao.delete("BusinessPackageMapper.deleteYW", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("BusinessPackageMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("BusinessPackageMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("BusinessPackageMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("BusinessPackageMapper.findById", pd);
	}
	/*
	* 通过名字获取数据
	*/
	public PageData findByName(PageData pd)throws Exception{
		return (PageData)dao.findForObject("BusinessPackageMapper.findByName", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("BusinessPackageMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

