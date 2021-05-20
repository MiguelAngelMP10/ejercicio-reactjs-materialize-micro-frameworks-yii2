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
            [['idUsuario', 'IdPago'], 'required'],
            [['idUsuario', 'IdPago'], 'integer'],
            [['idUsuario', 'IdPago'], 'unique', 'targetAttribute' => ['idUsuario', 'IdPago']],
            [['IdPago'], 'exist', 'skipOnError' => true, 'targetClass' => Pagos::className(), 'targetAttribute' => ['IdPago' => 'id']],
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
            'IdPago' => 'Id Pago',
        ];
    }

    /**
     * Gets query for [[IdPago]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getIdPago()
    {
        return $this->hasOne(Pagos::className(), ['id' => 'IdPago']);
    }

    /**
     * Gets query for [[IdUsuario0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getIdUsuario0()
    {
        return $this->hasOne(Usuarios::className(), ['id' => 'idUsuario']);
    }
}
