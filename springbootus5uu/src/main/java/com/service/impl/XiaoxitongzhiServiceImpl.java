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


import com.dao.XiaoxitongzhiDao;
import com.entity.XiaoxitongzhiEntity;
import com.service.XiaoxitongzhiService;
import com.entity.vo.XiaoxitongzhiVO;
import com.entity.view.XiaoxitongzhiView;

@Service("xiaoxitongzhiService")
public class XiaoxitongzhiServiceImpl extends ServiceImpl<XiaoxitongzhiDao, XiaoxitongzhiEntity> implements XiaoxitongzhiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XiaoxitongzhiEntity> page = this.selectPage(
                new Query<XiaoxitongzhiEntity>(params).getPage(),
                new EntityWrapper<XiaoxitongzhiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XiaoxitongzhiEntity> wrapper) {
		  Page<XiaoxitongzhiView> page =new Query<XiaoxitongzhiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XiaoxitongzhiVO> selectListVO(Wrapper<XiaoxitongzhiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XiaoxitongzhiVO selectVO(Wrapper<XiaoxitongzhiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XiaoxitongzhiView> selectListView(Wrapper<XiaoxitongzhiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XiaoxitongzhiView selectView(Wrapper<XiaoxitongzhiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

}
