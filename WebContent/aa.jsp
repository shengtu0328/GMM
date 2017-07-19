<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- $("button").click(function(){
  $("p").slideToggle();
}); -->

<table border="1" id="tb">
    <tr><td><input type="checkbox" onclick="selectAll(this)" />全选</td><td>姓名</td></tr>
    <tr><td><input type="checkbox" class="aaa" /></td><td>姓名1</td></tr>
    <tr><td><input type="checkbox" class="aaa" /></td><td>姓名2</td></tr>
    <tr><td><input type="checkbox" class="aaa" /></td><td>姓名3</td></tr>
    <tr><td colspan="2" align="center"><input type="button" value="遍历选中行" onclick="getChecked()" /></td></tr>
</table>
<script>
    var input = document.getElementById('tb').getElementsByTagName('input'),aaa=[];
    for (var i = 0; i < input.length; i++) if (input[i].type == 'checkbox' && input[i].className == 'aaa') aaa.push(input[i]);
    function selectAll(cb) { for (var i = 0; i < aaa.length; i++) aaa[i].checked = cb.checked; }
    function getChecked() {
        var tr;
        for(var i=0;i<aaa.length;i++)
            if (aaa[i].checked) {
                tr = aaa[i].parentNode.parentNode;//注意调整这里如果你的checkbox还有父容器，而不是直接放td里面
                alert(tr.innerHTML)
            }
    }
</script>
</body>
</html>