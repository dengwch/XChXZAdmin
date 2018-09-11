package com.fh.service.businessuser;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.fh.dao.DaoSupport;
import com.fh.entity.Page;
import com.fh.util.PageData;


@Service("businessuserService")
public class BusinessuserService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	/*
	* 新增
	*/
	public void save(PageData pd)throws Exception{
		dao.save("BusinessuserMapper.save", pd);
	}
	public void saveCode(PageData pd)throws Exception{
		dao.save("BusinessuserMapper.saveCode", pd);
	}
	/*
	* 删除
	*/
	public void delete(PageData pd)throws Exception{
		dao.delete("BusinessuserMapper.delete", pd);
	}
	public void deleteCode(PageData pd)throws Exception{
		dao.delete("BusinessuserMapper.deleteCode", pd);
	}
	/*
	* 修改
	*/
	public void edit(PageData pd)throws Exception{
		dao.update("BusinessuserMapper.edit", pd);
	}
	public void editpassword(PageData pd)throws Exception{
		dao.update("BusinessuserMapper.editpassword", pd);
	}
	public void editnotice(PageData pd)throws Exception{
		dao.update("BusinessuserMapper.editnotice", pd);
	}
	
	
	/*
	* 修改
	*/
	public void edit1(PageData pd)throws Exception{
		dao.update("BusinessuserMapper.edit1", pd);
	}
	/*
	*列表
	*/
	public List<PageData> list(Page page)throws Exception{
		return (List<PageData>)dao.findForList("BusinessuserMapper.datalistPage", page);
	}
	public List<PageData> datalistPagecode(Page page)throws Exception{
		return (List<PageData>)dao.findForList("BusinessuserMapper.datalistPagecode", page);
	}
	
	
	public List<PageData> listnoticepage(Page page)throws Exception{
		return (List<PageData>)dao.findForList("BusinessuserMapper.datalistPagenotice", page);
	}
	
	/*
	*列表
	*/
	public List<PageData> list1(Page page)throws Exception{
		return (List<PageData>)dao.findForList("BusinessuserMapper.datalistPage1", page);
	}
	/*
	*列表(全部)
	*/
	public List<PageData> listAll(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("BusinessuserMapper.listAll", pd);
	}
	public List<PageData> listAllnotice(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("BusinessuserMapper.listAllnotice", pd);
	}
	/*
	*列表(全部)
	*/
	public List<PageData> listAll1(PageData pd)throws Exception{
		return (List<PageData>)dao.findForList("BusinessuserMapper.listAll1", pd);
	}
	/*
	* 通过id获取数据
	*/
	public PageData findById(PageData pd)throws Exception{
		return (PageData)dao.findForObject("BusinessuserMapper.findById", pd);
	}
	public PageData findBycodenameds(PageData pd)throws Exception{
		return (PageData)dao.findForObject("BusinessuserMapper.findBycodename", pd);
	}
	
	/*
	* 批量删除
	*/
	public void deleteAll(String[] ArrayDATA_IDS)throws Exception{
		dao.delete("BusinessuserMapper.deleteAll", ArrayDATA_IDS);
	}
	
}

