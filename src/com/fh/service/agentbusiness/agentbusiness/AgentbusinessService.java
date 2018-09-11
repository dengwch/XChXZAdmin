package com.fh.service.agentbusiness.agentbusiness;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;


@Service("agentbusinessService")
public class AgentbusinessService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("AgentbusinessMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("AgentbusinessMapper.delete", pd);
	}
	/*
	* 删除deleteAgent
	*/
	public void deleteAgent(PageData pd)throws Exception{
		dao.delete("AgentbusinessMapper.deleteAgent", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("AgentbusinessMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("AgentbusinessMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("AgentbusinessMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("AgentbusinessMapper.findById", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("AgentbusinessMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

