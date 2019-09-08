<?php
  session_start(); 
    
?>

<?php $__env->startSection('contenido'); ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Organization Chart Plugin</title>
    <link rel="icon" href="img/logo.png">
    <link rel="stylesheet" href="css/jquery.orgchart.css">
    <script
    src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
    <!--   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> -->

    <style type="text/css">
      #ul-data {
        position: relative;
        top: -60px;
        display: inline-block;
        margin-left: 10%;
        width: 30%;
        margin-right: 6%;
      }
      #chart-container { display: inline-block; width: 50%; }
      #ul-data li { font-size: 32px; }
    </style>
  </head>
  <body>
    <form>
      <ul id="ul-data" style="display: none">
        <li>CLINICA CARDIOCENTRO MANTA
          <ul>
            <li>ENFERMERIA</li>
            <li>MEDICINA
              <ul>
                <li><center>Tie Hua</center>
                  <ul>
                    <li>hola</li>
                    <li>hol3</li>
                  </ul>
                </li>
                <li>Hei Hei
                  <ul>
                    <li>Pang Pang</li>
                    <li>Xiang Xiang</li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </li>
      </ul>
      <div id="chart-container"></div>
    </form>
    <!--   <script type="text/javascript" src="js/jquery.min.js"></script> -->


    <script type="text/javascript">
      $(function() {

        $('#chart-container').orgchart({
          'data' : $('#ul-data')
        });

      });
    </script>
  </body>
</html>



<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\TaskManta\resources\views/Organigrama/Organigrama.blade.php ENDPATH**/ ?>