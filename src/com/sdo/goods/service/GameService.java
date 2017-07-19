package com.sdo.goods.service;

import java.util.List;

import com.sdo.entity.GameArea;
import com.sdo.entity.GameOccupation;

public interface GameService {
	public List<GameArea> getAllGameAreas();
	public List<GameOccupation> getAllGameOccupations();
}
