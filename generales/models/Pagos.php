<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "pagos".
 *
 * @property int $id
 * @property string $concepto
 * @property string $fechaVencimiento
 * @property int $importe
 * @property int $interes
 * @property int $saldos
 * @property string|null $estatus
 */
class Pagos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'pagos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['concepto', 'fechaVencimiento', 'importe', 'interes', 'saldos'], 'required'],
            [['fechaVencimiento'], 'safe'],
            [['importe', 'interes', 'saldos'], 'integer'],
            [['concepto'], 'string', 'max' => 255],
            [['estatus'], 'string', 'max' => 50],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'concepto' => 'Concepto',
            'fechaVencimiento' => 'Fecha Vencimiento',
            'importe' => 'Importe',
            'interes' => 'Interes',
            'saldos' => 'Saldos',
            'estatus' => 'Estatus',
        ];
    }

    /**
     * Gets query for [[UsuarioPagos]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuarioPagos()
    {
        return $this->hasMany(UsuarioPagos::className(), ['idPago' => 'id']);
    }

    /**
     * Gets query for [[IdUsuarios]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuario()
    {
        return $this->hasMany(Usuarios::className(), ['id' => 'idUsuario'])->viaTable('usuario_pagos', ['idPago' => 'id']);
    }

    public function extraFields()
    {
        return ['usuario'];
    }
}
