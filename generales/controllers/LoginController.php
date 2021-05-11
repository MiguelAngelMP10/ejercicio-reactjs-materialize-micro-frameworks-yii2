<?php

namespace micro\controllers;

use micro\models\Login;
use yii\rest\ActiveController;
use Yii;

class LoginController extends ActiveController
{
    public $modelClass = 'micro\models\Login';

    public function behaviors()
    {
        $behaviors = parent::behaviors();
        unset($behaviors['rateLimiter']);
        return $behaviors;
    }

    public function actionLogin()
    {
        $request = Yii::$app->request;

        $username = $request->post('username');
        $password = $request->post('password');

        $login = Login::findOne(['username' => $username, 'password' => $password]);

        if ($login) {
            $login->token = hash('sha256',  $username . time());
            $login->save();
            return ['username' => $login->username, 'token' => $login->token];
        } else {
            return ['token' => null];
        }
    }

    public function actionAuth()
    {
        $request = Yii::$app->request;
        $token = $request->post('token');
        $token = Login::findOne(['token' => $token]);

        if ($token) {
            return ['token' => $token->token];
        } else {
            throw new \yii\web\ForbiddenHttpException;
        }
    }
}