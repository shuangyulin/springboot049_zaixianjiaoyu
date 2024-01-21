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


import com.dao.ShipindianboDao;
import com.entity.ShipindianboEntity;
import com.service.ShipindianboService;
import com.entity.vo.ShipindianboVO;
import com.entity.view.ShipindianboView;

@Service("shipindianboService")
public class ShipindianboServiceImpl extends ServiceImpl<ShipindianboDao, ShipindianboEntity> implements ShipindianboService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShipindianboEntity> page = this.selectPage(
                new Query<ShipindianboEntity>(params).getPage(),
                new EntityWrapper<ShipindianboEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShipindianboEntity> wrapper) {
		  Page<ShipindianboView> page =new Query<ShipindianboView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShipindianboVO> selectListVO(Wrapper<ShipindianboEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShipindianboVO selectVO(Wrapper<ShipindianboEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShipindianboView> selectListView(Wrapper<ShipindianboEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShipindianboView selectView(Wrapper<ShipindianboEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
