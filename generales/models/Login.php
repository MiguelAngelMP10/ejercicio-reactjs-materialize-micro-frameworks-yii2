<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "Login".
 *
 * @property int $id
 * @property string|null $username
 * @property string|null $password
 * @property string|null $token
 */
class Login extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'Login';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id'], 'required'],
            [['id'], 'integer'],
            [['username', 'password'], 'string', 'max' => 45],
            [['token'], 'string', 'max' => 250],
            [['id'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'username' => 'Username',
            'password' => 'Password',
            'token' => 'Token',
        ];
    }
}