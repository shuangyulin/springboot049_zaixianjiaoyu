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


import com.dao.WodebijiDao;
import com.entity.WodebijiEntity;
import com.service.WodebijiService;
import com.entity.vo.WodebijiVO;
import com.entity.view.WodebijiView;

@Service("wodebijiService")
public class WodebijiServiceImpl extends ServiceImpl<WodebijiDao, WodebijiEntity> implements WodebijiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<WodebijiEntity> page = this.selectPage(
                new Query<WodebijiEntity>(params).getPage(),
                new EntityWrapper<WodebijiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<WodebijiEntity> wrapper) {
		  Page<WodebijiView> page =new Query<WodebijiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<WodebijiVO> selectListVO(Wrapper<WodebijiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public WodebijiVO selectVO(Wrapper<WodebijiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<WodebijiView> selectListView(Wrapper<WodebijiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public WodebijiView selectView(Wrapper<WodebijiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
