<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "recibos".
 *
 * @property int $id
 * @property string $descripcionRecibo
 * @property string $tipoPago
 * @property string $estatus
 */
class Recibos extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'recibos';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['descripcionRecibo', 'tipoPago', 'estatus'], 'required'],
            [['descripcionRecibo'], 'string'],
            [['tipoPago'], 'string', 'max' => 250],
            [['estatus'], 'string', 'max' => 100],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'descripcionRecibo' => 'Descripcion Recibo',
            'tipoPago' => 'Tipo Pago',
            'estatus' => 'Estatus',
        ];
    }
}
