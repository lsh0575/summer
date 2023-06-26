package com.summer.aop;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class AopTrace {

	/*
	 * @Around("execution(public * com.company.service..*(..))") //JoinPoint 앞에
	 * Proceeding이 붙으면 around 사용 public Object trace(ProceedingJoinPoint joinPoint)
	 * throws Throwable { // 타겟메서드의 정보 String signature =
	 * joinPoint.getSignature().toShortString(); System.out.println(">> @Around" +
	 * signature + "START"); //System.out.println("앞");
	 * 
	 * // 타겟메서드 호출시간 확인 long start = System.currentTimeMillis(); Object result =
	 * joinPoint.proceed(); long end = System.currentTimeMillis();
	 * 
	 * //Object result = System.currentTimeMillis();
	 * 
	 * /////뒤 //System.out.println("뒤"); //System.out.println(result);
	 * 
	 * System.out.println(">> 실행시간 : " + (end-start) + "ms");
	 * System.out.println(">> @Around" + signature + "END"); return result; }
	 * 
	 * //service 안의 모든 클래스
	 * 
	 * @Before("execution(public * com.company..*(..))") public Object trace1
	 * (JoinPoint joinPoint) throws Throwable { //타겟메서드의 정보 String signature =
	 * joinPoint.getSignature().toShortString(); System.out.println(">> @Before" +
	 * signature + "START!");
	 * 
	 * //타겟메서드 호출시간확인 long start = System.currentTimeMillis(); try { //타겟메서드 호출
	 * Object result = joinPoint.getSignature().getName(); return result; }
	 * catch(Exception e) { e.printStackTrace(); return null; } finally { long end =
	 * System.currentTimeMillis(); System.out.println(">> 실행시간 : " + (end-start) +
	 * "ms"); System.out.println(">> @Before 메서드 실행전처리 - " + signature + "END!"); }
	 * }
	 */
	
	//serviced 안의 모든 클래스 - 정상실행
	/*
	 * @AfterReturning(pointcut="execution(public * com.company.service..*(..))",
	 * returning="ret") public Object trace2 (JoinPoint joinPoint, Object ret)
	 * throws Throwable { //타겟메서드의 정보 String signature =
	 * joinPoint.getSignature().toShortString();
	 * System.out.println(">> @AfterReturning" + signature + "START!");
	 * 
	 * //타겟메서드 호출시간확인 long start = System.currentTimeMillis(); try { //타겟메서드 호출
	 * Object result = joinPoint.getSignature().getName(); return result; }
	 * catch(Exception e) { e.printStackTrace(); return null; } finally { long end =
	 * System.currentTimeMillis(); System.out.println(">> 실행시간 : " + (end-start) +
	 * "ms"); System.out.println(">> @AfterReturning 메서드 실행 후 처리 - " + signature +
	 * "END! >> 리턴값 - " + ret); } }
	 * 
	 * //service안의 모든 클래스 // DaoImpl > insert (?, ?) sql 구문 망가트리기
	 * 
	 * @AfterThrowing(pointcut="execution(public * com.company.service..*(..))",
	 * throwing="ex") public Object trace3 (JoinPoint joinPoint, Throwable ex)
	 * throws Throwable { //타겟메서드의 정보 String signature =
	 * joinPoint.getSignature().toShortString();
	 * System.out.println(">> @AfterThrowing" + signature + "START!");
	 * 
	 * //타겟메서드 호출시간확인 long start = System.currentTimeMillis(); try { //타겟메서드 호출
	 * Object result = joinPoint.getSignature().getName(); return result; }
	 * catch(Exception e) { e.printStackTrace(); return null; } finally { long end =
	 * System.currentTimeMillis(); System.out.println(">> 실행시간 : " + (end-start) +
	 * "ms"); System.out.println(">> @AfterThrowing 메서드 실행 중 예외발생 - " + signature +
	 * "END! >> 예외메시지 - " + ex.getMessage()); } }
	 */
	
	//service안의 모든 클래스
	@After("execution(public * com.company.service..*(..))")
	public Object trace4 (JoinPoint joinPoint) throws Throwable {
		//타겟메서드의 정보
		String signature = joinPoint.getSignature().toShortString();
		System.out.println(">> @After" + signature + "START!");
		
		//타겟메서드 호출시간확인
		long start = System.currentTimeMillis();
		try { //타겟메서드 호출
			Object result = joinPoint.getSignature().getName();
			return result;
		} catch(Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			long end = System.currentTimeMillis();
			System.out.println(">> 실행시간 : " + (end-start) + "ms");
			System.out.println(">> @After 실행완료" + signature + "END!");
		}	
	}
}
