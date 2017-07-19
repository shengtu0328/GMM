package com.sdo.entity.json;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 
 * 类描述：标签工具类
 * 
 * @author: 张代浩   
 * @date： 日期：2012-12-28 时间：上午09:58:00
 * @version 1.1
 * @author liuht 修改不能输入双引号问题解决
 */
public class TagUtil {
	/**
	 * <b>Summary: </b> getFiled(获得实体Bean中所有属性)
	 * 
	 * @param objClass
	 * @return
	 * @throws ClassNotFoundException
	 */
	public static Field[] getFiled(Class<?> objClass) throws ClassNotFoundException {
		Field[] field = null;
		if (objClass != null) {
			Class<?> class1 = Class.forName(objClass.getName());
			field = class1.getDeclaredFields();// 这里便是获得实体Bean中所有属性的方法
			return field;
		} else {
			return field;
		}
	}

	/**
	 * 
	 * 获取对象内对应字段的值
	 * @param fields
	 */
	public static Object fieldNametoValues(String FiledName, Object o){
		Object value = "";
		String fieldName = "";
		String childFieldName = null;
		ReflectHelper reflectHelper=new ReflectHelper(o);
		if (FiledName.indexOf("_") == -1) {
			if(FiledName.indexOf(".") == -1){
				fieldName = FiledName;
			}else{
				fieldName = FiledName.substring(0, FiledName.indexOf("."));//外键字段引用名
				childFieldName = FiledName.substring(FiledName.indexOf(".") + 1);//外键字段名
			}
		} else {
			fieldName = FiledName.substring(0, FiledName.indexOf("_"));//外键字段引用名
			childFieldName = FiledName.substring(FiledName.indexOf("_") + 1);//外键字段名
		}
		value = reflectHelper.getMethodValue(fieldName)==null?"":reflectHelper.getMethodValue(fieldName);
		if (value !=""&&value != null && (FiledName.indexOf("_") != -1||FiledName.indexOf(".") != -1)) {
//            update-start--Author:zhangguoming  Date:20140827 for：功能增强，添加处理对象中List<Object>属性字段的解析
            if(value instanceof List) {
                Object tempValue = "";
                for (Object listValue : (List)value) {
                    tempValue = tempValue.toString() + fieldNametoValues(childFieldName, listValue) + ",";
                }
                value = tempValue;
            } else {
                value = fieldNametoValues(childFieldName, value);
            }
//            update-end--Author:zhangguoming  Date:20140827 for：功能增强，添加处理对象中List<Object>属性字段的解析
		}
		if(value != "" && value != null) {
//          update-begin--Author:jb_longjb 龙金波  Date:20150313 for：处理json中可能包含的特殊字符，防止页面加载出错
			value = converunicode(value.toString());
		}
		return value;
	}
	static Object converunicode(String jsonValue){
        StringBuffer sb = new StringBuffer();
        for (int i=0; i<jsonValue.length(); i++) {
        char c = jsonValue.charAt(i);
          switch (c){
//        update-begin--Author:zhoujf  Date:20150615 for：菜单图片不显示的问题
//         case '\"':
//                 sb.append("\\\"");
//                 break;
          case '\'':
                 sb.append("\\\'");
                 break;
             case '\\':
                 sb.append("\\\\");
                 break;
//             case '/':
//                 sb.append("\\/");
//                 break;
//               update-end--Author:zhoujf  Date:20150615 for：菜单图片不显示的问题
             case '\b':
                 sb.append("\\b");
                 break;
             case '\f':
                 sb.append("\\f");
                 break;
             case '\n':
                 sb.append("\\n");
                 break;
             case '\r':
                 sb.append("\\r");
                 break;
             case '\t':
                 sb.append("\\t");
                 break;
             default:
                 sb.append(c);
          }
         }
        return sb.toString();
}

}
