---@class UnityEngine.AndroidJNI : System.Object
local m = {}

---@static
---@return number
function m.AttachCurrentThread() end

---@static
---@return number
function m.DetachCurrentThread() end

---@static
---@return number
function m.GetVersion() end

---@static
---@param name string
---@return System.IntPtr
function m.FindClass(name) end

---@static
---@param refMethod System.IntPtr
---@return System.IntPtr
function m.FromReflectedMethod(refMethod) end

---@static
---@param refField System.IntPtr
---@return System.IntPtr
function m.FromReflectedField(refField) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param isStatic boolean
---@return System.IntPtr
function m.ToReflectedMethod(clazz, methodID, isStatic) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param isStatic boolean
---@return System.IntPtr
function m.ToReflectedField(clazz, fieldID, isStatic) end

---@static
---@param clazz System.IntPtr
---@return System.IntPtr
function m.GetSuperclass(clazz) end

---@static
---@param clazz1 System.IntPtr
---@param clazz2 System.IntPtr
---@return boolean
function m.IsAssignableFrom(clazz1, clazz2) end

---@static
---@param obj System.IntPtr
---@return number
function m.Throw(obj) end

---@static
---@param clazz System.IntPtr
---@param message string
---@return number
function m.ThrowNew(clazz, message) end

---@static
---@return System.IntPtr
function m.ExceptionOccurred() end

---@static
function m.ExceptionDescribe() end

---@static
function m.ExceptionClear() end

---@static
---@param message string
function m.FatalError(message) end

---@static
---@param capacity number
---@return number
function m.PushLocalFrame(capacity) end

---@static
---@param ptr System.IntPtr
---@return System.IntPtr
function m.PopLocalFrame(ptr) end

---@static
---@param obj System.IntPtr
---@return System.IntPtr
function m.NewGlobalRef(obj) end

---@static
---@param obj System.IntPtr
function m.DeleteGlobalRef(obj) end

---@static
---@param obj System.IntPtr
---@return System.IntPtr
function m.NewLocalRef(obj) end

---@static
---@param obj System.IntPtr
function m.DeleteLocalRef(obj) end

---@static
---@param obj1 System.IntPtr
---@param obj2 System.IntPtr
---@return boolean
function m.IsSameObject(obj1, obj2) end

---@static
---@param capacity number
---@return number
function m.EnsureLocalCapacity(capacity) end

---@static
---@param clazz System.IntPtr
---@return System.IntPtr
function m.AllocObject(clazz) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.IntPtr
function m.NewObject(clazz, methodID, args) end

---@static
---@param obj System.IntPtr
---@return System.IntPtr
function m.GetObjectClass(obj) end

---@static
---@param obj System.IntPtr
---@param clazz System.IntPtr
---@return boolean
function m.IsInstanceOf(obj, clazz) end

---@static
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function m.GetMethodID(clazz, name, sig) end

---@static
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function m.GetFieldID(clazz, name, sig) end

---@static
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function m.GetStaticMethodID(clazz, name, sig) end

---@static
---@param clazz System.IntPtr
---@param name string
---@param sig string
---@return System.IntPtr
function m.GetStaticFieldID(clazz, name, sig) end

---@static
---@param bytes string
---@return System.IntPtr
function m.NewStringUTF(bytes) end

---@static
---@param str System.IntPtr
---@return number
function m.GetStringUTFLength(str) end

---@static
---@param str System.IntPtr
---@return string
function m.GetStringUTFChars(str) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return string
function m.CallStringMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.IntPtr
function m.CallObjectMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallIntMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return boolean
function m.CallBooleanMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallShortMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallByteMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallCharMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallFloatMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallDoubleMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallLongMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
function m.CallVoidMethod(obj, methodID, args) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return string
function m.GetStringField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return System.IntPtr
function m.GetObjectField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return boolean
function m.GetBooleanField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetByteField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetCharField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetShortField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetIntField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetLongField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetFloatField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetDoubleField(obj, fieldID) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val string
function m.SetStringField(obj, fieldID, val) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val System.IntPtr
function m.SetObjectField(obj, fieldID, val) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val boolean
function m.SetBooleanField(obj, fieldID, val) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetByteField(obj, fieldID, val) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetCharField(obj, fieldID, val) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetShortField(obj, fieldID, val) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetIntField(obj, fieldID, val) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetLongField(obj, fieldID, val) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetFloatField(obj, fieldID, val) end

---@static
---@param obj System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetDoubleField(obj, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return string
function m.CallStaticStringMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return System.IntPtr
function m.CallStaticObjectMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallStaticIntMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return boolean
function m.CallStaticBooleanMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallStaticShortMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallStaticByteMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallStaticCharMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallStaticFloatMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallStaticDoubleMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
---@return number
function m.CallStaticLongMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param methodID System.IntPtr
---@param args UnityEngine.jvalue[]
function m.CallStaticVoidMethod(clazz, methodID, args) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return string
function m.GetStaticStringField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return System.IntPtr
function m.GetStaticObjectField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return boolean
function m.GetStaticBooleanField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetStaticByteField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetStaticCharField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetStaticShortField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetStaticIntField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetStaticLongField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetStaticFloatField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@return number
function m.GetStaticDoubleField(clazz, fieldID) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val string
function m.SetStaticStringField(clazz, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val System.IntPtr
function m.SetStaticObjectField(clazz, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val boolean
function m.SetStaticBooleanField(clazz, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetStaticByteField(clazz, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetStaticCharField(clazz, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetStaticShortField(clazz, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetStaticIntField(clazz, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetStaticLongField(clazz, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetStaticFloatField(clazz, fieldID, val) end

---@static
---@param clazz System.IntPtr
---@param fieldID System.IntPtr
---@param val number
function m.SetStaticDoubleField(clazz, fieldID, val) end

---@static
---@param array boolean[]
---@return System.IntPtr
function m.ToBooleanArray(array) end

---@static
---@param array string
---@return System.IntPtr
function m.ToByteArray(array) end

---@static
---@param array number[]
---@return System.IntPtr
function m.ToCharArray(array) end

---@static
---@param array number[]
---@return System.IntPtr
function m.ToShortArray(array) end

---@static
---@param array number[]
---@return System.IntPtr
function m.ToIntArray(array) end

---@static
---@param array number[]
---@return System.IntPtr
function m.ToLongArray(array) end

---@static
---@param array number[]
---@return System.IntPtr
function m.ToFloatArray(array) end

---@static
---@param array number[]
---@return System.IntPtr
function m.ToDoubleArray(array) end

---@overload fun(array:System.IntPtr[]): @static
---@static
---@param array System.IntPtr[]
---@param arrayClass System.IntPtr
---@return System.IntPtr
function m.ToObjectArray(array, arrayClass) end

---@static
---@param array System.IntPtr
---@return boolean[]
function m.FromBooleanArray(array) end

---@static
---@param array System.IntPtr
---@return string
function m.FromByteArray(array) end

---@static
---@param array System.IntPtr
---@return number[]
function m.FromCharArray(array) end

---@static
---@param array System.IntPtr
---@return number[]
function m.FromShortArray(array) end

---@static
---@param array System.IntPtr
---@return number[]
function m.FromIntArray(array) end

---@static
---@param array System.IntPtr
---@return number[]
function m.FromLongArray(array) end

---@static
---@param array System.IntPtr
---@return number[]
function m.FromFloatArray(array) end

---@static
---@param array System.IntPtr
---@return number[]
function m.FromDoubleArray(array) end

---@static
---@param array System.IntPtr
---@return System.IntPtr[]
function m.FromObjectArray(array) end

---@static
---@param array System.IntPtr
---@return number
function m.GetArrayLength(array) end

---@static
---@param size number
---@return System.IntPtr
function m.NewBooleanArray(size) end

---@static
---@param size number
---@return System.IntPtr
function m.NewByteArray(size) end

---@static
---@param size number
---@return System.IntPtr
function m.NewCharArray(size) end

---@static
---@param size number
---@return System.IntPtr
function m.NewShortArray(size) end

---@static
---@param size number
---@return System.IntPtr
function m.NewIntArray(size) end

---@static
---@param size number
---@return System.IntPtr
function m.NewLongArray(size) end

---@static
---@param size number
---@return System.IntPtr
function m.NewFloatArray(size) end

---@static
---@param size number
---@return System.IntPtr
function m.NewDoubleArray(size) end

---@static
---@param size number
---@param clazz System.IntPtr
---@param obj System.IntPtr
---@return System.IntPtr
function m.NewObjectArray(size, clazz, obj) end

---@static
---@param array System.IntPtr
---@param index number
---@return boolean
function m.GetBooleanArrayElement(array, index) end

---@static
---@param array System.IntPtr
---@param index number
---@return number
function m.GetByteArrayElement(array, index) end

---@static
---@param array System.IntPtr
---@param index number
---@return number
function m.GetCharArrayElement(array, index) end

---@static
---@param array System.IntPtr
---@param index number
---@return number
function m.GetShortArrayElement(array, index) end

---@static
---@param array System.IntPtr
---@param index number
---@return number
function m.GetIntArrayElement(array, index) end

---@static
---@param array System.IntPtr
---@param index number
---@return number
function m.GetLongArrayElement(array, index) end

---@static
---@param array System.IntPtr
---@param index number
---@return number
function m.GetFloatArrayElement(array, index) end

---@static
---@param array System.IntPtr
---@param index number
---@return number
function m.GetDoubleArrayElement(array, index) end

---@static
---@param array System.IntPtr
---@param index number
---@return System.IntPtr
function m.GetObjectArrayElement(array, index) end

---@static
---@param array System.IntPtr
---@param index number
---@param val number
function m.SetBooleanArrayElement(array, index, val) end

---@static
---@param array System.IntPtr
---@param index number
---@param val number
function m.SetByteArrayElement(array, index, val) end

---@static
---@param array System.IntPtr
---@param index number
---@param val number
function m.SetCharArrayElement(array, index, val) end

---@static
---@param array System.IntPtr
---@param index number
---@param val number
function m.SetShortArrayElement(array, index, val) end

---@static
---@param array System.IntPtr
---@param index number
---@param val number
function m.SetIntArrayElement(array, index, val) end

---@static
---@param array System.IntPtr
---@param index number
---@param val number
function m.SetLongArrayElement(array, index, val) end

---@static
---@param array System.IntPtr
---@param index number
---@param val number
function m.SetFloatArrayElement(array, index, val) end

---@static
---@param array System.IntPtr
---@param index number
---@param val number
function m.SetDoubleArrayElement(array, index, val) end

---@static
---@param array System.IntPtr
---@param index number
---@param obj System.IntPtr
function m.SetObjectArrayElement(array, index, obj) end

UnityEngine.AndroidJNI = m
return m
