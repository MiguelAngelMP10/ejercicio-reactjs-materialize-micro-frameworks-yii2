<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class PagosDepositoController extends ActiveController
{
    public $modelClass = 'micro\models\PagosDeposito';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
