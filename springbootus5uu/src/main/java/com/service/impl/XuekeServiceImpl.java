package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XuekeDao;
import com.entity.XuekeEntity;
import com.service.XuekeService;
import com.entity.vo.XuekeVO;
import com.entity.view.XuekeView;

@Service("xuekeService")
public class XuekeServiceImpl extends ServiceImpl<XuekeDao, XuekeEntity> implements XuekeService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuekeEntity> page = this.selectPage(
                new Query<XuekeEntity>(params).getPage(),
                new EntityWrapper<XuekeEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuekeEntity> wrapper) {
		  Page<XuekeView> page =new Query<XuekeView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XuekeVO> selectListVO(Wrapper<XuekeEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XuekeVO selectVO(Wrapper<XuekeEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XuekeView> selectListView(Wrapper<XuekeEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuekeView selectView(Wrapper<XuekeEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
