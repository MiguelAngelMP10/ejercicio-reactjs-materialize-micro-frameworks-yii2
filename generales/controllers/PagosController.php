<?php

namespace micro\controllers;

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
}
