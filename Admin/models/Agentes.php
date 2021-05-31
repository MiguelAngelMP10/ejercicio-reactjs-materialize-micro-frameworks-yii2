<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "agentes".
 *
 * @property int $id
 * @property string $nombre
 * @property string $apellidoPaterno
 * @property string $apellidoMaterno
 * @property string $tipoAgente
 */
class Agentes extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'agentes';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nombre', 'apellidoPaterno', 'apellidoMaterno', 'tipoAgente'], 'required'],
            [['nombre', 'apellidoPaterno', 'apellidoMaterno', 'tipoAgente'], 'string', 'max' => 100],
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
            'tipoAgente' => 'Tipo Agente',
        ];
    }
}