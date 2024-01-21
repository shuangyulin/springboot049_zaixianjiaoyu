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


import com.dao.GoumaidekechengDao;
import com.entity.GoumaidekechengEntity;
import com.service.GoumaidekechengService;
import com.entity.vo.GoumaidekechengVO;
import com.entity.view.GoumaidekechengView;

@Service("goumaidekechengService")
public class GoumaidekechengServiceImpl extends ServiceImpl<GoumaidekechengDao, GoumaidekechengEntity> implements GoumaidekechengService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<GoumaidekechengEntity> page = this.selectPage(
                new Query<GoumaidekechengEntity>(params).getPage(),
                new EntityWrapper<GoumaidekechengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<GoumaidekechengEntity> wrapper) {
		  Page<GoumaidekechengView> page =new Query<GoumaidekechengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<GoumaidekechengVO> selectListVO(Wrapper<GoumaidekechengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public GoumaidekechengVO selectVO(Wrapper<GoumaidekechengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<GoumaidekechengView> selectListView(Wrapper<GoumaidekechengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public GoumaidekechengView selectView(Wrapper<GoumaidekechengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
