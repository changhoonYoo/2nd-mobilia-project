<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="./css/review_write.css">
<script src="./js/jquery.js"></script>
<script src="./js/review.js"></script>
</head>
<body>
<div id="reviewArea">
	<form action="review_write_ok.net?p_no=${pv.p_no}" method="post" name="reviewform"
	onsubmit="return review_check();">
		<h2>상품 후기 작성</h2>
		<div>
			<table id="starTable">
				<tr>
					<th>별점</th>	
					<td>
						<div>
							<span>
								<img id="image1" onmouseover="show(1);" onclick="mark(1);"
									onmouseout="noshow(1);" src="./images/product/star0.png"
									width="20">
								<img id="image2" onmouseover="show(2);" onclick="mark(2);"
									onmouseout="noshow(2);" src="./images/product/star0.png"
									width="20">
								<img id="image3" onmouseover="show(3);" onclick="mark(3);"
									onmouseout="noshow(3);" src="./images/product/star0.png"
									width="20">
								<img id="image4" onmouseover="show(4);" onclick="mark(4);"
									onmouseout="noshow(4);" src="./images/product/star0.png"
									width="20">
								<img id="image5" onmouseover="show(5);" onclick="mark(5);"
									onmouseout="noshow(5);" src="./images/product/star0.png"
									width="20">
							</span>
						</div>
						<input type="hidden" name="re_star" id="re_star">
					</td>
				</tr>
			</table>
		</div>
		<div id="starText">별점을 선택해주세요.</div>
		<div style="clear:both;"></div>
		<div id="reviewArea">
			<div id="pr_info2">
				<div><img src="./upload${pv.p_img1}" 
					style="width:100px;height:auto;">
					<input type="hidden" value="${pv.p_img1}" name="p_img1"></div>
				<span id="pr_name2">${pv.p_name}
				<input type="hidden" value="${pv.p_name}" name="p_name">
				</span>
			</div>
			<div style="clear:both;"></div>
		</div>
		<div id="reviewArea">
			<table id="reviewTable">
				<tr>
					<th>아이디</th><td>${id}</td>
				</tr>
			</table>
			<div>
				<textarea id="re_cont" name="re_cont" rows="15" cols="40" placeholder="후기를 입력하세요."></textarea>
			</div>
			<div>
				<input id="reviewBtn" type="submit" value="등록">
				<input id="cancelBtn" type="button" value="취소" onclick="self.close();">
			</div>
		</div>
	</form>
</div>
</body>
</html>