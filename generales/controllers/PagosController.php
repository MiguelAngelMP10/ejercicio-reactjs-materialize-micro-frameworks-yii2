<?php

namespace micro\controllers;

use micro\models\Pagos;
use yii\rest\ActiveController;


class PagosController extends ActiveController
{
    public $modelClass = 'micro\models\Pagos';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }

    public function actionPagados()
    {
        $pagos = Pagos::find()
            ->where(['estatus' => "Pagado"])
            ->all();
        return $pagos;
    }
}
