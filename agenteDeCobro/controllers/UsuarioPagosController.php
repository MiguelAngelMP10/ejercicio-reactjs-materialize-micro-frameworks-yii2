<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class UsuarioPagosController extends ActiveController
{
    public $modelClass = 'micro\models\UsuarioPagos';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
