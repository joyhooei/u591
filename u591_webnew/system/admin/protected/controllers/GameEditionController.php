<?php
/**
 * Created by PhpStorm.
 * User: luoxue
 * Date: 2016/12/26
 * Time: 下午7:37
 */
require_once(ROOT_PATH.'inc/config.php');
require_once(ROOT_PATH.'inc/config_account.php');
require_once(ROOT_PATH.'inc/function.php');
class GameEditionController extends Controller{
    protected $table = 'g_edition';
    protected $siteArr = array(1=>'位置1', 2=>'位置2', 3=>'位置3');

    public function actionIndex(){
        $gameId = Yii::app()->request->getParam('gameid');
        $gameId = isset($gameId) ? $gameId : $this->mangerInfo['game_id'];
        $serverId =Yii::app()->request->getParam('serverid');
        $game = Game::model()->getGame($this->mangerInfo['game_id'], '游戏');
        $gameServer = GameServer::model()->getInfo();

        $info = array();
        $count = 0;
        if(isset($_POST['pagination'])){
            $pagination=$_POST['pagination'];
            $offset=($_POST['pagination']-1)*20;
        }else {
            $pagination=1;
            $offset=0;
        }
        if($serverId >= 0){
            $conn = SetConn($serverId);
            $where = '1=1';

            $sqlCount = "select * from $this->table where $where";
            $queryCount = @mysqli_query($conn,$sqlCount);
            $count = @mysqli_num_rows($queryCount);
            $sql = "select * from $this->table where $where order by Id desc limit 20 offset $offset";
            $query = @mysqli_query($conn,$sql);
            $i = 0;
            while (@$rows = mysqli_fetch_assoc($query)){
                $info[$i]['id'] = $rows['Id'];
                $info[$i]['edition_version'] = $rows['edition_version'];
                $info[$i]['show_type'] = $rows['show_type'];
                $info[$i]['show_name'] = $rows['show_name'];
                $i++;
            }
        }
        $this->renderPartial('index', array(
            'info'=>$info,'pages'=>20,'count'=>$count,'pagination'=>$pagination,
            'title'=>'游戏版图', 'game' => $game, 'gameServer' => $gameServer,
            'gameId'=>$gameId, 'serverId'=>$serverId, 'siteArr' => $this->siteArr,
        ));
    }

    public function actionUpdate($id, $serverId){
        $conn = SetConn($serverId);
        $sql = "select * from $this->table where Id='$id' limit 1";
        $query = @mysqli_query($conn,$sql);
        $rs = mysqli_fetch_assoc($query);
        if(isset($_POST['id']) && !empty($_POST['id'])){
            $version = $_POST['version'];
            $site = $_POST['site'];
            $name = $_POST['name'];
            $desc1 = $_POST['desc1'];
            $desc2 = $_POST['desc2'];
            $desc3 = $_POST['desc3'];
            $desc4 = $_POST['desc4'];
            $desc5 = $_POST['desc5'];
            $desc6 = $_POST['desc6'];
            if(strlen($desc1) > 255)
                $this->error('描述1的长度不能大于255！');
            if(strlen($desc2) > 255)
                $this->error('描述2的长度不能大于255！');
            $sql = "update $this->table set edition_version='$version',show_type='$site',show_name='$name',edition_desc_1='$desc1',edition_desc_2='$desc2',edition_desc_3='$desc3',edition_desc_4='$desc4',edition_desc_5='$desc5',edition_desc_6='$desc6'";
            $sql .= " where Id='$id'";
            if(mysqli_query($conn, $sql))
                $this->success('修改成功！');
            $this->error('编辑失败！');
        }
        $this->renderPartial('update', array('info'=>$rs, 'siteArr'=>$this->siteArr,'id'=>$id,'serverId'=>$serverId));
    }

    public function actionAdd(){
        $game = Game::model()->getGame($this->mangerInfo['game_id'], '游戏');
        if(!empty($_POST)){
            $serverId = $_POST['serverId'];
            $version = $_POST['version'];
            $site = $_POST['site'];
            $name = $_POST['name'];
            $desc1 = $_POST['desc1'];
            $desc2 = $_POST['desc2'];
            $desc3 = $_POST['desc3'];
            $desc4 = $_POST['desc4'];
            $desc5 = $_POST['desc5'];
            $desc6 = $_POST['desc6'];
            if(strlen($desc1) > 255)
                $this->error('描述1的长度不能大于255！');
            if(strlen($desc2) > 255)
                $this->error('描述2的长度不能大于255！');

            foreach ($serverId as $v){
                $conn = SetConn($v);
                $sql = "insert into $this->table (edition_version,show_type,show_name,edition_desc_1,edition_desc_2,edition_desc_3,edition_desc_4,edition_desc_5,edition_desc_6) VALUES('$version','$site','$name', '$desc1', '$desc2','$desc3','$desc4','$desc5','$desc6')";
                if(false == mysqli_query($conn, $sql))
                    echo "<script>alert('$v 服添加版图失败.')</script>";
            }
            $this->display('游戏版图添加成功！', 1);
        }
        $this->renderPartial('add', array('title' =>'游戏版图', 'game' => $game, 'siteArr' => $this->siteArr,));
    }
    
    
    public function actionActindex(){
    	$info = array();
    	$count = 0;
    	if(isset($_POST['pagination'])){
    		$pagination=$_POST['pagination'];
    		$offset=($_POST['pagination']-1)*20;
    	}else {
    		$pagination=1;
    		$offset=0;
    	}
    	$conn = SetConn(88);
    	$where = '1=1';
    	$status = isset($_POST['status'])?$_POST['status']:0;
    	$curdate = date('Y-m-d H:i:s');
    	if($status == '1'){
    		$where .= " and starttime<'$curdate' and endtime >'$curdate' and isShowActivity=0";
    	}elseif($status == '2'){
    		$where .= " and (starttime>'$curdate' or endtime <'$curdate' or isShowActivity=1)";
    	}
    	$sqlCount = "select * from web_act where $where";
    	$queryCount = @mysqli_query($conn,$sqlCount);
    	$count = @mysqli_num_rows($queryCount);
    	$sql = "select * from web_act where $where order by id desc limit 20 offset $offset";
    	$query = @mysqli_query($conn,$sql);
    	$i = 0;
    	while (@$rows = mysqli_fetch_assoc($query)){
    		$info[$i]['id'] = $rows['id'];
    		$info[$i]['serverid'] = $rows['serverid'];
    		$info[$i]['showtime'] = $rows['starttime'].'~'.$rows['endtime'];
    		$info[$i]['imgurl'] = $rows['textureResPath'];
    		$info[$i]['isShowActivity'] = $rows['isShowActivity'];
    		$i++;
    	}
    	$this->renderPartial('actindex', array(
    			'info'=>$info,'pages'=>20,'count'=>$count,'pagination'=>$pagination,
    			'title'=>'运营活动','status'=>$status
    	));
    }
    
    public function actionActadd(){
    	$game = Game::model()->getGame($this->mangerInfo['game_id'], '游戏');
    	if(!empty($_POST)){
    		$serverId = implode(',', $_POST['serverId']);
    		$act = new Act;
    		$act->gameid = $_POST['gameid'];
    		$act->serverid = $serverId;
    		$act->starttime = $_POST['starttime'];
    		$act->endtime = $_POST['endtime'];
    		$act->textureResPath = $_POST['textureResPath'];
    		$act->showday = $_POST['showday'];
    		$act->noshowday = $_POST['noshowday'];
    		$act->isShowDetail = $_POST['isShowDetail'];
    		$act->eudemonId = $_POST['eudemonId'];
    		$act->eudDetailPos = $_POST['eudDetailPos'];
    		$act->isShowGotoBtn = $_POST['isShowGotoBtn'];
    		$act->gotoBtnPos = $_POST['gotoBtnPos'];
    		$act->jumpModule = $_POST['jumpModule'];
    		$act->jumpParam = $_POST['jumpParam'];
    		if($act->save()) {
    			$this->display('添加成功.', 1, $this->createUrl('gameEdition/actindex'));
    		}else{
    			$this->display(CHtml::errorSummary($act), 0);
    		}
    	}
    	$startTime = isset($_POST['startTime']) ? $_POST['startTime'] : date('Y-m-d').' 00:00:00';
    	$endTime = isset($_POST['endTime']) ? $_POST['endTime'] : date('Y-m-d').' 23:59:59';
    	$this->renderPartial('actadd', array('title' =>'运营活动', 'game' => $game,'startTime'=>$startTime,'endTime'=>$endTime));
    }
    public function actionActupdate($id){
    	$model = Act::model();
    	$act = $model->findByPk($id);
    	if(!empty($_POST)){
    		$act->starttime = $_POST['starttime'];
    		$act->endtime = $_POST['endtime'];
    		$act->textureResPath = $_POST['textureResPath'];
    		$act->showday = $_POST['showday'];
    		$act->noshowday = $_POST['noshowday'];
    		$act->isShowDetail = $_POST['isShowDetail'];
    		$act->eudemonId = $_POST['eudemonId'];
    		$act->eudDetailPos = $_POST['eudDetailPos'];
    		$act->isShowGotoBtn = $_POST['isShowGotoBtn'];
    		$act->gotoBtnPos = $_POST['gotoBtnPos'];
    		$act->jumpModule = $_POST['jumpModule'];
    		$act->jumpParam = $_POST['jumpParam'];
    		if($act->save()) {
    			$this->display('修改成功.', 1, $this->createUrl('gameEdition/actindex'));
    		}else{
    			$this->display(CHtml::errorSummary($act), 0);
    		}
    	}
    	$this->renderPartial('actupdate', array('title' =>'运营活动', 'info' => $act));
    }
}