<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "usuario_pagos".
 *
 * @property int $id
 * @property int $idUsuario
 * @property int $IdPago
 *
 * @property Pagos $idPago
 * @property Usuarios $idUsuario0
 */
class UsuarioPagos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuario_pagos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idUsuario', 'idPago'], 'required'],
            [['idUsuario', 'idPago'], 'integer'],
            [['idUsuario', 'idPago'], 'unique', 'targetAttribute' => ['idUsuario', 'idPago']],
            [['idPago'], 'exist', 'skipOnError' => true, 'targetClass' => Pagos::className(), 'targetAttribute' => ['idPago' => 'id']],
            [['idUsuario'], 'exist', 'skipOnError' => true, 'targetClass' => Usuarios::className(), 'targetAttribute' => ['idUsuario' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idUsuario' => 'Id Usuario',
            'idPago' => 'Id Pago',
        ];
    }

    /**
     * Gets query for [[IdPago]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getPago()
    {
        return $this->hasOne(Pagos::className(), ['id' => 'idPago']);
    }

    /**
     * Gets query for [[usuario]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuario()
    {
        return $this->hasOne(Usuarios::className(), ['id' => 'idUsuario']);
    }


    public function extraFields()
    {
        return ['usuario', 'pago'];
    }
}
