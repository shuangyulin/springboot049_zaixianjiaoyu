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


import com.dao.WodekechengDao;
import com.entity.WodekechengEntity;
import com.service.WodekechengService;
import com.entity.vo.WodekechengVO;
import com.entity.view.WodekechengView;

@Service("wodekechengService")
public class WodekechengServiceImpl extends ServiceImpl<WodekechengDao, WodekechengEntity> implements WodekechengService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WodekechengEntity> page = this.selectPage(
                new Query<WodekechengEntity>(params).getPage(),
                new EntityWrapper<WodekechengEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WodekechengEntity> wrapper) {
		  Page<WodekechengView> page =new Query<WodekechengView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WodekechengVO> selectListVO(Wrapper<WodekechengEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WodekechengVO selectVO(Wrapper<WodekechengEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WodekechengView> selectListView(Wrapper<WodekechengEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WodekechengView selectView(Wrapper<WodekechengEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
