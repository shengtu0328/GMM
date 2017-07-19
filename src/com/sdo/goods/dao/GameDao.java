package com.sdo.goods.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sdo.entity.GameArea;
import com.sdo.entity.GameOccupation;

public interface GameDao {
	public List<GameArea> getAllGameAreas();
	public List<GameOccupation>getAllGameOccupations();

}
