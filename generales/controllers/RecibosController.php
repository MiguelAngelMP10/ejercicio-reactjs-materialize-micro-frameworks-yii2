<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class RecibosController extends ActiveController
{
    public $modelClass = 'micro\models\Recibos';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
