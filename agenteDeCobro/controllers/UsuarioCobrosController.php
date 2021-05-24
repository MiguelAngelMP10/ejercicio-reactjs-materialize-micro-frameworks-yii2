<?php

namespace micro\controllers;

use micro\models\Conceptos;
use micro\models\UsuarioCobros;
use Yii;
use yii\rest\ActiveController;


class UsuarioCobrosController extends ActiveController
{
    public $modelClass = 'micro\models\UsuarioCobros';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }


    public function actionAddCobros()
    {
        $request = Yii::$app->request;
        $idUsuario =  $request->getBodyParam('idUsuario');
        $conceptos  = $request->getBodyParam('conceptos');
        $start  = $request->getBodyParam('start');
        $end  = $request->getBodyParam('end');


        $array = explode(",", $conceptos);
        foreach ($array as $key => $concepto) {
            $usuarioCobro = new  UsuarioCobros();
            $usuarioCobro->idUsuario = $idUsuario;
            $usuarioCobro->idConcepto = $concepto;
            $usuarioCobro->fechaInico = $start;
            $usuarioCobro->fechaFin = $end;
            $usuarioCobro->save();
        }


        return ["mensaje" => "ok"];
    }
}
