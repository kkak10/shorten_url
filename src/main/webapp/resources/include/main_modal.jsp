<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- LOGIN Modal -->
<div class="modal fade" id="myModal_login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">로그인</h4>
      </div>
      <div class="modal-body">
      		<!-- LOGIN FORM -->
			 <form class="form-horizontal" role="form">
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">이메일</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" id="inputEmail3" placeholder="이메일">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">패스워드</label>
			    <div class="col-sm-10">
			      <input type="password" class="form-control" id="inputPassword3" placeholder="패스워드">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <div class="checkbox">
			        <label>
			          <!--  <input type="checkbox"> Remember me -->
			        </label>
			      </div>
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			    
			    </div>
			  </div>
			<!-- LOGIN FORM END  -->
      </div>
      <div class="modal-footer">  
        <button type="submit" class="btn btn-primary">로그인</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
      </form>
    </div>
  </div>
</div>
<!-- LOGIN Modal END -->

<!-- REGIST Modal -->
<div class="modal fade" id="myModal_regist" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title" id="myModalLabel">회원가입</h4>
      </div>
      <div class="modal-body">
      		<!-- LOGIN FORM -->
			 <form class="form-horizontal" role="form">
			  <div class="form-group">
			    <label for="inputEmail3" class="col-sm-2 control-label">이메일</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" id="inputEmail3" placeholder="이메일">
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-2 control-label">비밀번호</label>
			    <div class="col-sm-10">
			      <input type="password" class="form-control" id="inputPassword3" placeholder="비밀번호">
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <div class="checkbox">
			        <label>
			          <!--<input type="checkbox"> Remember me-->
			        </label>
			      </div>
			    </div>
			  </div>
			  <div class="form-group">
			    <div class="col-sm-offset-2 col-sm-10">
			      <!--  <button type="submit" class="btn btn-default">Sign in</button>-->
			    </div>
			  </div>
			</form>
			<!-- LOGIN FORM END  -->
      </div>
      <div class="modal-footer">
      	<button type="button" class="btn btn-primary">가입하기</button>
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>
<!-- REGIST Modal END -->