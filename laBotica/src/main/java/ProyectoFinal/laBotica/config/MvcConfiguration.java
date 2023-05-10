package ProyectoFinal.laBotica.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import ProyectoFinal.laBotica.interfaces.CRUD;
import ProyectoFinal.laBotica.modelo.Administrativo;
import ProyectoFinal.laBotica.modelo.Cliente;
import ProyectoFinal.laBotica.modelo.Usuario;
import ProyectoFinal.laBotica.dao.*;

@Configuration
@ComponentScan(basePackages="ProyectoFinal.laBotica")
@EnableWebMvc

public class MvcConfiguration extends WebMvcConfigurerAdapter{

	@Bean
	public ViewResolver getViewResolver(){
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		return resolver;
	}
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	@Bean
	public DriverManagerDataSource getDataSource() {

		DriverManagerDataSource bds = new DriverManagerDataSource();
		bds.setDriverClassName("com.mysql.cj.jdbc.Driver");
		bds.setUrl("jdbc:mysql://localhost:3306/laBotica");
		bds.setUsername("root");
		bds.setPassword("Notiene1");

		return bds;
	}
	


	@Bean
	public CRUD<Usuario> getUsuarioDao() {
		return new ImplUsuarioDao(getDataSource());
	}
	
	@Bean
	public CRUD<Administrativo> getAdminDao() {
		return new ImplAdminDao(getDataSource());
	}
	
	@Bean
	public CRUD<Cliente> getClienteDao() {
		return new ImplClienteDao(getDataSource());
	}
}

