<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "usuarios".
 *
 * @property int $id
 * @property string $nombre
 * @property string $apellidoPaterno
 * @property string $apellidoMaterno
 *
 * @property UsuarioPagos[] $usuarioPagos
 * @property Pagos[] $idPagos
 */
class Usuarios extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuarios';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'apellidoPaterno', 'apellidoMaterno'], 'required'],
            [['nombre', 'apellidoPaterno', 'apellidoMaterno'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nombre' => 'Nombre',
            'apellidoPaterno' => 'Apellido Paterno',
            'apellidoMaterno' => 'Apellido Materno',
        ];
    }

    /**
     * Gets query for [[UsuarioPagos]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuarioPagos()
    {
        return $this->hasMany(UsuarioPagos::className(), ['idUsuario' => 'id']);
    }

    /**
     * Gets query for [[IdPagos]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getIdPagos()
    {
        return $this->hasMany(Pagos::className(), ['id' => 'IdPago'])->viaTable('usuario_pagos', ['idUsuario' => 'id']);
    }
}
