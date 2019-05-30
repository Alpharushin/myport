


 <div class="container about-resume">
    <div class="row resume-wrap">
      <div class="col-md-4 col-lg-3 resume-avatar">
        <div class="avatar avatar-big">
          <?php if ($about->photo != ''){
          $photo = HOST . 'usercontent/about/' . $about->photo ;
        } else{
          $photo = '/img/avatar-img/photo-big.jpg';
        }
          ?>

          <img src="<?=$photo?>" alt=""/>
          
        </div>
      </div>
    <div class="col-md-8 col-lg-9 resume-content">
        <div class="resume-content--text">
          <h1><?=$about->name?></h1>

          <?=$about->description?>

          <?php if ( isAdmin() ) { ?>
            <div class="about-button">
              <a class="button button-edit" href="<?=HOST?>about-edit"> Редактировать </a>
            </div>
          <?php }  ?>

          </div>
        </div>
      </div>
    </div>
  </div>


  <div class="about-skills">
    <div class="container">
      <div class="row" style="position: relative;">

      

        <div class="col-md-4 col-lg-3"></div>
        <div class="col-md-8 col-lg-9">
          <div class="header_skills">Изученные технологии
            <br>
            <br>
          </div>
        </div>
      </div>
      <div class="row row--skills">
        <div class="col-md-4 col-lg-3 d-flex">
          <div class="skills_title justify-content-center align-self-center"> Фронтенд</div>
        </div>
        <div class="col-md-8 col-lg-9">
          <div class="about-skills-conteiner">
            <div class="skills_frontend" id="skills_frontend">
				<?php for ($i=0; $i < 5 ; $i++) {  ?>
					<div class="circle" id="<?=$skills[$i]['name']?>" 
						data-name="<?=$skills[$i]['name']?>" 
						data-procent=<?=$skills[$i]['success']?>>
					</div>
				<?php } ?>
            </div>
          </div>
        </div>
      </div>
      <div class="row row--skills">
        <div class="col-md-4 col-lg-3 d-flex">
          <div class="skills_title justify-content-center align-self-center"> Бэкенд</div>
        </div>
        <div class="col-md-8 col-lg-9">
          <div class="about-skills-conteiner">

          	


            <div class="skills_backend" id="skills_backend">
            	<?php for ($i=5; $i < 8 ; $i++) {  ?>
            		<div class="circle" id="<?=$skills[$i]['name']?>" 
            			data-name="<?=$skills[$i]['name']?>" 
            			data-procent=<?=$skills[$i]['success']?>>
            		</div>
            	<?php } ?>
            	
            </div>
          </div>
        </div>
      </div>
      <div class="row row--skills">
        <div class="col-md-4 col-lg-3 d-flex">
          <div class="skills_title justify-content-center align-self-center"> ВоркФлоу</div>
        </div>
        <div class="col-md-8 col-lg-9">
          <div class="about-skills-conteiner">
            <div class="skills_workflow" id="skills_workflow">

            	<?php for ($i=8; $i < 11 ; $i++) {  ?>
            		<div class="circle" id="<?=$skills[$i]['name']?>" 
            			data-name="<?=$skills[$i]['name']?>" 
            			data-procent=<?=$skills[$i]['success']?>>
            		</div>
            	<?php } ?>


          

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
 <?php include( ROOT . 'templates/about/_parts/_about-jobs.tpl'); ?>