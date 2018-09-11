package com.fh.service.hotwork;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;


@Service("hotworkService")
public class HotworkService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("HotworkMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("HotworkMapper.delete", pd);
	}
	/*
	* 删除
	*/
	public void delete1(PageData pd)throws Exception{
		dao.delete("HotworkMapper.delete1", pd);
	}
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("HotworkMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("HotworkMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("HotworkMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("HotworkMapper.findById", pd);
	}
	/*
	* 通过id获取数据
	*/
	public PageData findByWORK_ID(PageData pd)throws Exception{
		return (PageData)dao.findForObject("HotworkMapper.findByWORK_ID", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("HotworkMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

