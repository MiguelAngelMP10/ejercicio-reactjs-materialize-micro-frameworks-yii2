<?php

namespace micro\controllers;

use yii\rest\ActiveController;


class AgentesController extends ActiveController
{
    public $modelClass = 'micro\models\Agentes';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }
}
