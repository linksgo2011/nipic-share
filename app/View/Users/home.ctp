<div class="container">
    <div class="row">
        <h3 class="bg-info">账户信息</h3>
        <div class="col-md-12">
            <p>剩余次数: <span class="label label-info"><?php echo $user['number']; ?></span>     </p>
            <p>
                <span >注册时间: <span class="label label-info"><?php echo date("Y-m-d",$user['created']); ?></span></span>
                <span >过期时间: <span class="label label-warning"><?php echo date("Y-m-d",$user['expired']); ?></span></span>
            </p>
        </div>
        <hr>
    </div>
    <div class="row">
        <h3>下载</h3>
        <p class="bg-info">填写下载地址如:http://baidu.com</p>
        <div class="col-md-12">
            <?php echo $this->Form->create("",array('class'=>'form-inline','role'=>'form')) ?>
              <div class="form-group">
                <label class="sr-only" for="exampleInputEmail2">文件初始地址:</label>
                <input style="width:300px;" type="email" class="form-control" id="exampleInputEmail2" placeholder="http://baidu.com">
              </div>
              <button type="submit" class="btn btn-primary">下载</button>
              <?php echo $this->Form->end(); ?>
        </div>
    </div>
</div>