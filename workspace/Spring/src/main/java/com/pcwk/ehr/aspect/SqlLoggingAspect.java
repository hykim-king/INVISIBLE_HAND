package com.pcwk.ehr.aspect;

import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.mapping.ParameterMapping;
import org.aspectj.lang.JoinPoint;

import com.pcwk.ehr.cmn.PcwkLoger;

public class SqlLoggingAspect implements PcwkLoger {

	public void logBefore(JoinPoint joinPoint) throws Throwable {
		Object[] args = joinPoint.getArgs();
		MappedStatement mappedStatement = (MappedStatement) args[0];

		Object parameter = args[1];

		BoundSql boundSql = mappedStatement.getBoundSql(parameter);
		String sql = boundSql.getSql();
		String parameterString = extractParameters(boundSql);
		
        LOG.debug("Executing SQL: {}", sql);
        LOG.debug("Parameters: {}", parameterString);
	}

	private String extractParameters(BoundSql boundSql) {
        StringBuilder parameterString = new StringBuilder();
        for (ParameterMapping parameterMapping : boundSql.getParameterMappings()) {
            String propertyName = parameterMapping.getProperty();
            Object value = boundSql.getAdditionalParameter(propertyName);
            parameterString.append(propertyName).append("=").append(value).append(", ");
        }
        if (parameterString.length() > 0) {
            parameterString.setLength(parameterString.length() - 2); // Remove the trailing comma and space
        }
        return parameterString.toString();
	}   		
}
