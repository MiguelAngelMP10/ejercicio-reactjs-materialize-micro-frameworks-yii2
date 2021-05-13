<?php
namespace micro\models;

use Yii;

/**
 * This is the model class for table "transacciones".
 *
 * @property int $id
 * @property int $idPago
 * @property string $monto
 * @property string $opcionPago
 */
class Transacciones extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'transacciones';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idPago', 'monto', 'opcionPago'], 'required'],
            [['idPago'], 'integer'],
            [['monto'], 'string', 'max' => 100],
            [['opcionPago'], 'string', 'max' => 150],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idPago' => 'Id Pago',
            'monto' => 'Monto',
            'opcionPago' => 'Opcion Pago',
        ];
    }
}