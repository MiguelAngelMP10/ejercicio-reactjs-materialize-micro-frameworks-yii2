<?php

namespace micro\controllers;

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
}
