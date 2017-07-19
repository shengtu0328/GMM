<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="goods/addgoods.htm" method="post">
标题<input type="text" name="title"><br>
价格<input type="text" name="price"><br>
区服<select name="area">
      <option value="华东">华东</option>
      <option value="华南">华南</option>
      <option value="华北">华北</option>
    </select><br>
职业<input type="text" name="occupation"><br>
角色等级<input type="text" name="characterlevel"><br>
装备属性<input type="text" name="charactereqs"><br>
纹章<input type="text" name="wenzhang"><br>
护符<input type="text" name="hufu"><br>
翅膀/尾巴<input type="text" name="chibangweiba"><br>
坐骑/宠物<input type="text" name="zuojichongwu"><br>
金币/点券<input type="text" name="jinbidianquan"><br>
背包/仓库<input type="text" name="beibaocangku"><br>
竞技场等级<input type="text" name="pklevel"><br>
满级角色数量<input type="text" name="fulllevelnums"><br>
复活<input type="text" name="fuhuo"><br>
商品数量<input type="text" name="goodsnums"><br>
类型<input type="text" name="category_id"><br>
其他<input type="text" name="else1"><br>
<input type="submit" value="提交">
</form>

<form action="goods/oneUpload.htmcategory=1" method="post" enctype="multipart/form-data">
<input type="file" name="imageFile" />
<input type="submit" value="上传">
</form>

</body>
</html>