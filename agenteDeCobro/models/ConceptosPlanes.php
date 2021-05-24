<?php

namespace micro\models;

use Yii;

/**
 * This is the model class for table "conceptos_planes".
 *
 * @property int $id
 * @property int $idConcepto
 * @property string $plan
 *
 * @property Conceptos $idConcepto0
 */
class ConceptosPlanes extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'conceptos_planes';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idConcepto', 'plan'], 'required'],
            [['idConcepto'], 'integer'],
            [['plan'], 'string', 'max' => 250],
            [['idConcepto'], 'exist', 'skipOnError' => true, 'targetClass' => Conceptos::className(), 'targetAttribute' => ['idConcepto' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idConcepto' => 'Id Concepto',
            'plan' => 'Plan',
        ];
    }

    /**
     * Gets query for [[IdConcepto0]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getIdConcepto0()
    {
        return $this->hasOne(Conceptos::className(), ['id' => 'idConcepto']);
    }
}