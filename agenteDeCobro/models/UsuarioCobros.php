<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "usuarios_cobros".
 *
 * @property int $id
 * @property int $idUsuario
 * @property int $idConcepto
 * @property string $fechaInico
 * @property string $fechaFin
 *
 * @property Conceptos $idConcepto0
 * @property Usuarios $idUsuario0
 */
class UsuarioCobros extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuario_cobros';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idUsuario', 'idConcepto', 'fechaInico', 'fechaFin'], 'required'],
            [['idUsuario', 'idConcepto'], 'integer'],
            [['fechaInico', 'fechaFin'], 'safe'],
            [['idConcepto'], 'exist', 'skipOnError' => true, 'targetClass' => Conceptos::className(), 'targetAttribute' => ['idConcepto' => 'id']],
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
            'idConcepto' => 'Id Concepto',
            'fechaInico' => 'Fecha Inico',
            'fechaFin' => 'Fecha Fin',
        ];
    }

    /**
     * Gets query for [[IdConcepto0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getConcepto()
    {
        return $this->hasOne(Conceptos::className(), ['id' => 'idConcepto']);
    }

    /**
     * Gets query for [[IdUsuario0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getUsuario()
    {
        return $this->hasOne(Usuarios::className(), ['id' => 'idUsuario']);
    }

    public function extraFields()
    {
        return ['concepto', 'usuario'];
    }
}
