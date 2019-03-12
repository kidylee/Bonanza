package com.statestr.gcth.jvmmodel

import org.eclipse.xtext.common.types.JvmAnnotationType
import org.eclipse.xtext.common.types.JvmGenericType
import org.eclipse.xtext.common.types.TypesFactory

class GoldCopyReference {

	static public final GoldCopyReference instance = new GoldCopyReference()

	var JvmGenericType processResource

	var JvmGenericType abstractComponent
	var JvmGenericType workflowProcessor
	val JvmGenericType sharedServices
	val JvmGenericType variableScope
	val JvmGenericType workflowControl
	val JvmGenericType workflowNextStep
	val JvmGenericType workflowSession
	val JvmGenericType useCaseTxn
	val proxyMetrics = "com.statestr.gcth.core.annotation.ProxyMetrics"
	val JvmGenericType rawTransaction 
	

	protected new() {
		this.rawTransaction = TypesFactory.eINSTANCE.createJvmGenericType
		this.rawTransaction.packageName = "com.statestr.gcth.application.model"
		this.rawTransaction.simpleName = "RawTransaction"

		this.abstractComponent = TypesFactory.eINSTANCE.createJvmGenericType
		this.abstractComponent.abstract = true
		this.abstractComponent.packageName = "com.statestr.gcth.core.component"
		this.abstractComponent.simpleName = "AbstractComponent"

		this.workflowProcessor = TypesFactory.eINSTANCE.createJvmGenericType
		this.workflowProcessor.interface = true
		this.workflowProcessor.packageName = "com.statestr.gcth.application.workflow"
		this.workflowProcessor.simpleName = "WorkflowProcessor"

		this.processResource = TypesFactory.eINSTANCE.createJvmGenericType
		this.processResource.packageName = "com.statestr.gcth.application.model"
		this.processResource.simpleName = "ProcessResource"
		this.sharedServices = TypesFactory.eINSTANCE.createJvmGenericType
		this.sharedServices.packageName = "com.statestr.gcth.application.service"
		this.sharedServices.simpleName = "SharedServices"
		this.variableScope = TypesFactory.eINSTANCE.createJvmGenericType
		this.variableScope.packageName = "com.statestr.gcth.application.workflow"
		this.variableScope.simpleName = "VariableScope"
		this.workflowControl = TypesFactory.eINSTANCE.createJvmGenericType
		this.workflowControl.packageName = "com.statestr.gcth.application.workflow"
		this.workflowControl.simpleName = "WorkflowControl"
		this.workflowNextStep = TypesFactory.eINSTANCE.createJvmGenericType
		this.workflowNextStep.packageName = "com.statestr.gcth.application.workflow"
		this.workflowNextStep.simpleName = "WorkflowNextStep"
		this.workflowSession = TypesFactory.eINSTANCE.createJvmGenericType
		this.workflowSession.packageName = "com.statestr.gcth.application.workflow"
		this.workflowSession.simpleName = "WorkflowSession"
		this.useCaseTxn = TypesFactory.eINSTANCE.createJvmGenericType
		this.useCaseTxn.packageName = "com.statestr.gcth.application.model"
		this.useCaseTxn.simpleName = "UseCaseTxn"

	}

	def JvmGenericType getAbstractComponent() {
		this.abstractComponent
	}

	def JvmGenericType getWorkflowProcessor() {
		this.workflowProcessor
	}

	def JvmGenericType getSharedServices() { this.sharedServices }

	def JvmGenericType getVariableScope() { this.variableScope }

	def JvmGenericType getWorkflowControl() { this.workflowControl }

	def JvmGenericType getWorkflowNextStep() { this.workflowNextStep }

	def JvmGenericType getWorkflowSession() { this.workflowSession }

	def JvmGenericType getUseCaseTxn() { this.useCaseTxn }

	def JvmGenericType getProcessResource() { this.processResource }

	def getProxyMetrics() { this.proxyMetrics }
	
	def getRawTransaction() { this.rawTransaction }
}
