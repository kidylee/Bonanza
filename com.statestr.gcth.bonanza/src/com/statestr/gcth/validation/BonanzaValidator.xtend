/*
 * generated by Xtext 2.16.0
 */
package com.statestr.gcth.validation

import com.statestr.gcth.bonanza.BonanzaPackage
import com.statestr.gcth.bonanza.MapperField
import org.eclipse.xtext.validation.Check

/**
 * This class contains custom validation rules. 
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#validation
 */
class BonanzaValidator extends AbstractBonanzaValidator {

	public static val INVALID_TYPE = 'InvalidType'

	@Check
	def checkNonEntityFieldType(MapperField field) {
		val sourceField = field.from
		val targetField = field.to
		val mapper = field.call
		if (targetField.name === null || sourceField === null) {
			return
		}
		var sourceFieldType = "String"
		if (sourceField.hardCode !== null) {
		}

		if (mapper === null) {
			if (targetField.type.simpleName != "String") {
//				error('''Source field«sourceField» Entity field «targetField.name» is «targetField.type.type.identifier».''',
//					BonanzaPackage.eINSTANCE.mapperField_From, INVALID_TYPE)
			}
		} else {
		}
	}

}
