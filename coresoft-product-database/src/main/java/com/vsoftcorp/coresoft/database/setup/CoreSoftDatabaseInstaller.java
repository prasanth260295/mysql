package com.vsoftcorp.coresoft.database.setup;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;

import com.vsoftcorp.install.db.DBType;
import com.vsoftcorp.install.db.DatabaseConnectionFactory;
import com.vsoftcorp.install.db.DatabaseInstaller;
import com.vsoftcorp.install.db.ScriptControlRepository;
import com.vsoftcorp.install.version.MavenVersion;
import com.vsoftcorp.install.version.MavenVersionConverter;
import com.vsoftcorp.io.JarEntryFile;
import com.vsoftcorp.io.JarFileSystem;

public class CoreSoftDatabaseInstaller extends
		DatabaseInstaller<MavenVersion, JarEntryFile> {

	private static MavenVersion targetVersion;

	static {

		Properties properties = new Properties();

		try {
			// properties file containing target version
			properties.load(CoreSoftDatabaseInstaller.class
					.getResourceAsStream("/coresoft-database.properties"));
		} catch (IOException e) {
			throw new RuntimeException(e);
		}

		targetVersion = MavenVersion.toMavenVersion(removeSnapshot(properties
				.getProperty("target.version")));
		System.out.println("targetVersion-->"+ targetVersion);
	}

	private static String removeSnapshot(String theVersion) {
		System.out.println("theVersion-->"+ theVersion);
		if (theVersion.toLowerCase().endsWith("-snapshot")) {
			theVersion = theVersion.substring(0,
					theVersion.lastIndexOf("-SNAPSHOT"));
		}
		System.out.println("returntheVersion-->"+ theVersion);

		return theVersion;

	}

	public CoreSoftDatabaseInstaller(
			DatabaseConnectionFactory theDatabaseConnectionFactory,
			DBType theDBType) throws IOException, SQLException {
		super(
				"CORESOFT-DATABASE",
				targetVersion,
				theDatabaseConnectionFactory,
				new ScriptControlRepository<MavenVersion, JarEntryFile>(
						JarFileSystem
								.newInstance(JarFileSystem
										.getJarFilePath(CoreSoftDatabaseInstaller.class)),
						MavenVersionConverter.getInstance()), theDBType);
	}

	public static void main(String[] args) throws SQLException, IOException {
		DatabaseInstaller.main(args, CoreSoftDatabaseInstaller.class,
				System.out, MavenVersionConverter.getInstance());
		
		System.out.println("in Coresoft Database");
	}
}