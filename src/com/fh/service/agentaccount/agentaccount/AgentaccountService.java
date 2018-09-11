package com.fh.service.agentaccount.agentaccount;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;


@Service("agentaccountService")
public class AgentaccountService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("AgentaccountMapper.save", pd);
	}
	
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("AgentaccountMapper.delete", pd);
	}
	
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("AgentaccountMapper.edit", pd);
	}
	
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("AgentaccountMapper.datalistPage", page);
	}
	
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("AgentaccountMapper.listAll", pd);
	}
	
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("AgentaccountMapper.findById", pd);
	}
	/*
	* 通过id获取数据
	*/
	public PageData findByIdAgent(PageData pd)throws Exception{
		return (PageData)dao.findForObject("AgentaccountMapper.findByIdAgent", pd);
	}
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("AgentaccountMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

