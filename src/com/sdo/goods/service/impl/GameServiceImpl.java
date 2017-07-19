package com.sdo.goods.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sdo.entity.GameArea;
import com.sdo.entity.GameOccupation;
import com.sdo.goods.dao.GameDao;
@Service
public class GameServiceImpl implements com.sdo.goods.service.GameService {
	@Resource
	private  GameDao gameDao;

	@Override
	public List<GameArea> getAllGameAreas() {
		
		return gameDao.getAllGameAreas();
	}

	@Override
	public List<GameOccupation> getAllGameOccupations() {
		// TODO Auto-generated method stub
		return gameDao.getAllGameOccupations();
	}
}
