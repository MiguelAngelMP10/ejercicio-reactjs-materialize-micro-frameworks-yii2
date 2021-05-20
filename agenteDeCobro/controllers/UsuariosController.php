<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class UsuariosController extends ActiveController
{
    public $modelClass = 'micro\models\Usuarios';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
