﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebAppSer.ServiceReferenceHoras {
    
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServiceReferenceHoras.WebServiceHorasSoap")]
    public interface WebServiceHorasSoap {
        
        // CODEGEN: Se está generando un contrato de mensaje, ya que el nombre de elemento InsertarTiemResult del espacio de nombres http://tempuri.org/ no está marcado para aceptar valores nil.
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/InsertarTiem", ReplyAction="*")]
        WebAppSer.ServiceReferenceHoras.InsertarTiemResponse InsertarTiem(WebAppSer.ServiceReferenceHoras.InsertarTiemRequest request);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/InsertarTiem", ReplyAction="*")]
        System.Threading.Tasks.Task<WebAppSer.ServiceReferenceHoras.InsertarTiemResponse> InsertarTiemAsync(WebAppSer.ServiceReferenceHoras.InsertarTiemRequest request);
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class InsertarTiemRequest {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="InsertarTiem", Namespace="http://tempuri.org/", Order=0)]
        public WebAppSer.ServiceReferenceHoras.InsertarTiemRequestBody Body;
        
        public InsertarTiemRequest() {
        }
        
        public InsertarTiemRequest(WebAppSer.ServiceReferenceHoras.InsertarTiemRequestBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class InsertarTiemRequestBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=0)]
        public System.DateTime Fecha;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=1)]
        public int Horas;
        
        [System.Runtime.Serialization.DataMemberAttribute(Order=2)]
        public int IdActiv;
        
        public InsertarTiemRequestBody() {
        }
        
        public InsertarTiemRequestBody(System.DateTime Fecha, int Horas, int IdActiv) {
            this.Fecha = Fecha;
            this.Horas = Horas;
            this.IdActiv = IdActiv;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.ServiceModel.MessageContractAttribute(IsWrapped=false)]
    public partial class InsertarTiemResponse {
        
        [System.ServiceModel.MessageBodyMemberAttribute(Name="InsertarTiemResponse", Namespace="http://tempuri.org/", Order=0)]
        public WebAppSer.ServiceReferenceHoras.InsertarTiemResponseBody Body;
        
        public InsertarTiemResponse() {
        }
        
        public InsertarTiemResponse(WebAppSer.ServiceReferenceHoras.InsertarTiemResponseBody Body) {
            this.Body = Body;
        }
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
    [System.Runtime.Serialization.DataContractAttribute(Namespace="http://tempuri.org/")]
    public partial class InsertarTiemResponseBody {
        
        [System.Runtime.Serialization.DataMemberAttribute(EmitDefaultValue=false, Order=0)]
        public string InsertarTiemResult;
        
        public InsertarTiemResponseBody() {
        }
        
        public InsertarTiemResponseBody(string InsertarTiemResult) {
            this.InsertarTiemResult = InsertarTiemResult;
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface WebServiceHorasSoapChannel : WebAppSer.ServiceReferenceHoras.WebServiceHorasSoap, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class WebServiceHorasSoapClient : System.ServiceModel.ClientBase<WebAppSer.ServiceReferenceHoras.WebServiceHorasSoap>, WebAppSer.ServiceReferenceHoras.WebServiceHorasSoap {
        
        public WebServiceHorasSoapClient() {
        }
        
        public WebServiceHorasSoapClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public WebServiceHorasSoapClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebServiceHorasSoapClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public WebServiceHorasSoapClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        WebAppSer.ServiceReferenceHoras.InsertarTiemResponse WebAppSer.ServiceReferenceHoras.WebServiceHorasSoap.InsertarTiem(WebAppSer.ServiceReferenceHoras.InsertarTiemRequest request) {
            return base.Channel.InsertarTiem(request);
        }
        
        public string InsertarTiem(System.DateTime Fecha, int Horas, int IdActiv) {
            WebAppSer.ServiceReferenceHoras.InsertarTiemRequest inValue = new WebAppSer.ServiceReferenceHoras.InsertarTiemRequest();
            inValue.Body = new WebAppSer.ServiceReferenceHoras.InsertarTiemRequestBody();
            inValue.Body.Fecha = Fecha;
            inValue.Body.Horas = Horas;
            inValue.Body.IdActiv = IdActiv;
            WebAppSer.ServiceReferenceHoras.InsertarTiemResponse retVal = ((WebAppSer.ServiceReferenceHoras.WebServiceHorasSoap)(this)).InsertarTiem(inValue);
            return retVal.Body.InsertarTiemResult;
        }
        
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Advanced)]
        System.Threading.Tasks.Task<WebAppSer.ServiceReferenceHoras.InsertarTiemResponse> WebAppSer.ServiceReferenceHoras.WebServiceHorasSoap.InsertarTiemAsync(WebAppSer.ServiceReferenceHoras.InsertarTiemRequest request) {
            return base.Channel.InsertarTiemAsync(request);
        }
        
        public System.Threading.Tasks.Task<WebAppSer.ServiceReferenceHoras.InsertarTiemResponse> InsertarTiemAsync(System.DateTime Fecha, int Horas, int IdActiv) {
            WebAppSer.ServiceReferenceHoras.InsertarTiemRequest inValue = new WebAppSer.ServiceReferenceHoras.InsertarTiemRequest();
            inValue.Body = new WebAppSer.ServiceReferenceHoras.InsertarTiemRequestBody();
            inValue.Body.Fecha = Fecha;
            inValue.Body.Horas = Horas;
            inValue.Body.IdActiv = IdActiv;
            return ((WebAppSer.ServiceReferenceHoras.WebServiceHorasSoap)(this)).InsertarTiemAsync(inValue);
        }
    }
}