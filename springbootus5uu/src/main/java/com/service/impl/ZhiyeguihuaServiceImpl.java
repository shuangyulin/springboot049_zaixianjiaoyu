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


import com.dao.ZhiyeguihuaDao;
import com.entity.ZhiyeguihuaEntity;
import com.service.ZhiyeguihuaService;
import com.entity.vo.ZhiyeguihuaVO;
import com.entity.view.ZhiyeguihuaView;

@Service("zhiyeguihuaService")
public class ZhiyeguihuaServiceImpl extends ServiceImpl<ZhiyeguihuaDao, ZhiyeguihuaEntity> implements ZhiyeguihuaService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhiyeguihuaEntity> page = this.selectPage(
                new Query<ZhiyeguihuaEntity>(params).getPage(),
                new EntityWrapper<ZhiyeguihuaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhiyeguihuaEntity> wrapper) {
		  Page<ZhiyeguihuaView> page =new Query<ZhiyeguihuaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhiyeguihuaVO> selectListVO(Wrapper<ZhiyeguihuaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhiyeguihuaVO selectVO(Wrapper<ZhiyeguihuaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhiyeguihuaView> selectListView(Wrapper<ZhiyeguihuaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhiyeguihuaView selectView(Wrapper<ZhiyeguihuaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
