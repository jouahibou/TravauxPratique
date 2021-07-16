<%-- 
    Document   : AddEtudiant
    Created on : Jul 15, 2021, 9:15:41 PM
    Author     : Lenovo
--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title> TDSI LOG </title>
   
    <link href="./assets/css/bootstrap.css" rel="stylesheet" />
    
    <link href="./assets/css/font-awesome.css" rel="stylesheet" />
    
    <link href="./assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
   
    <link href="./assets/css/custom.css" rel="stylesheet" />
    
    
    <link rel="stylesheet" type="text/css" href="./assets/css/custom.css" />
    
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>

<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">

               
                <a class="navbar-brand" href="index.html">TDSI admin</a>
            </div>
            <div style="color: white;
             padding: 15px 50px 5px 50px;
            float: right;
            font-size: 16px;"> &nbsp; 
                <form method ="post" action="Verified">
           <button type="submit" class="btn btn-danger square-btn-adjust">Logout</button>
             </form>
                
            </div>
        </nav>
       
        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <li class="text-center">
                        <img src="./assets/img/find_user.png" class="user-image img-responsive" />
                    </li>
                    <li>
                        <a href="Verified"><i class="fa fa-table fa-3x"></i> Tous les Etudiants</a>
                    </li>

                    <li>
                        <a href="AddEtudiant"><i class="fa fa-plus" aria-hidden="true"></i> Inscrire un Etudiant</a>
                    </li>

                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-3x"></i> Etudiants par groupe<span
                                class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="groupe">Groupe 1</a>
                            </li>
                            <li>
                                <a href="groupe">Groupe 2</a>
                            </li>
                            <li>
                                <a href="#">Groupe 3</a>

                            </li>
                        </ul>
                    </li>
            </div>

        </nav>
        <div id="page-wrapper">
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Admin Dashboard</h2>
                        <h5>Welcome Khali Diamé , Love to see you back. </h5>
                    </div>
                </div>
               
               <div class="col-md-9 col-sm-12 col-xs-12">

                    <div class="panel panel-default">
                        
                        <style type="text/css">
         #success_message {
            display: none;
        }
        .container{
            
            width : 900px;
        }
    </style>
    <div class="container">

        <form  method="post"  action="EtudiantServlet" class="well form-horizontal">
            <fieldset>

                <!-- Form Name -->
                <legend>
                    <center>
                        <h2><b>Inscrire Etudiant </b></h2>
                    </center>
                </legend><br>

               

                <div class="form-group">
                    <label class="col-md-4 control-label">First Name</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="prenom" placeholder="Prenom" class="form-control" type="text" autocomplete="off">
                        </div>
                    </div>
                </div>
               <div class="form-group">
                    <label class="col-md-4 control-label">Last Name</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="nom" placeholder="Nom" class="form-control" type="text" autocomplete="off">
                        </div>
                    </div>
                </div>
                
                 <div class="form-group">
                    <label class="col-md-4 control-label">Age</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="age" placeholder="age" class="form-control" type="text" autocomplete="off" >
                        </div>
                    </div>
                </div>
                    
                <div class="form-group">
                    <label class="col-md-4 control-label">Pays Origine</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="paysOrigine" placeholder="paysOrigine" class="form-control" type="text" autocomplete="off">
                        </div>
                    </div>
                </div>
                 
                <div class="form-group">
                    <label class="col-md-4 control-label">Sport Pratique</label>
                    <div class="col-md-4 inputGroupContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input name="sportPratique" placeholder="sportPratique" class="form-control" type="text" autocomplete="off">
                        </div>
                    </div>
                </div>
                

                <div class="form-group">
                    <label class="col-md-4 control-label">Groupe de TD </label>
                    <div class="col-md-4 selectContainer">
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                            <select name="groupeTD" class="form-control selectpicker">
                                <option value="">Selectione le groupe de TD </option>
                                <option>Groupe 1</option>
                                <option>Groupe 2</option>
                                <option>Groupe 3</option>

                            </select>
                        </div>
                    </div>
                </div>

               

              


                <!-- Text input-->

              

                <!-- Select Basic -->

                <!-- Success message -->
                <div class="alert alert-success" role="alert" id="success_message">Success <i
                        class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>

                <!-- Button -->
                <div class="form-group">
                    <label class="col-md-4 control-label"></label>
                    <div class="col-md-4">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>

            </fieldset>
        </form>
    </div>
    </div>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#contact_form').bootstrapValidator({
                // To use feedback icons, ensure that you use Bootstrap v3.1.0 or later
                feedbackIcons: {
                    valid: 'glyphicon glyphicon-ok',
                    invalid: 'glyphicon glyphicon-remove',
                    validating: 'glyphicon glyphicon-refresh'
                },
                fields: {
                    prenom: {
                        validators: {
                            stringLength: {
                                min: 2,
                            },
                            notEmpty: {
                                message: 'Please enter your First Name'
                            }
                        }
                    },
                    nom: {
                        validators: {
                            stringLength: {
                                min: 2,
                            },
                            notEmpty: {
                                message: 'Please enter your Last Name'
                            }
                        }
                    },
                    niveau: {
                        validators: {
                            notEmpty: {
                                message: 'Le Niveau de Etudiant svp '
                            }
                        }
                    },
                    bday: {
                        validators: {
                            stringLength: {
                                min: 8,
                            },
                            notEmpty: {
                                message: 'La date de naissance svp '
                            }
                        }
                    },

                    email: {
                        validators: {
                            notEmpty: {
                                message: 'Please enter your Email Address'
                            },
                            emailAddress: {
                                message: 'Please enter a valid Email Address'
                            }
                        }
                    },
                    contact_no: {
                        validators: {

                            stringLength: {
                                min: 12,
                                max: 12,
                                notEmpty: {
                                    message: 'Le Numéro de telephone .'
                                }
                            }
                        },
                        groupe: {
                            validators: {
                                notEmpty: {
                                    message: 'Le groupe de Td svp '
                                }
                            }
                        },
                    }
                }
            })
                .on('success.form.bv', function (e) {
                    $('#success_message').slideDown({ opacity: "show" }, "slow") // Do something ...
                    $('#contact_form').data('bootstrapValidator').resetForm();

                    // Prevent form submission
                    e.preventDefault();

                    // Get the form instance
                    var $form = $(e.target);

                    // Get the BootstrapValidator instance
                    var bv = $form.data('bootstrapValidator');

                    // Use Ajax to submit form data
                    $.post($form.attr('action'), $form.serialize(), function (result) {
                        console.log(result);
                    }, 'json');
                });
        });

    </script>
                       
                        </div>
                    </div>

                </div>
            </div>






            <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
    </div>
    
    <script src="./assets/js/jquery-1.10.2.js"></script>
    
    <script src="./assets/js/bootstrap.min.js"></script>
    
    <script src="./assets/js/jquery.metisMenu.js"></script>
    
    <script src="./assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="./assets/js/morris/morris.js"></script>
    
    <script src="./assets/js/custom.js"></script>


</body>
</html>
        
        
        
   
